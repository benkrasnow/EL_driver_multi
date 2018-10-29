#include <SPI.h>

#define PIN_SPI_DAT 4  //Using hardware SPI.  Pins are defined here just for completeness
#define PIN_SPI_CLK 3
#define PIN_SPI_LE 0  //Latch enable on both the HV513 nad HV507

#define PIN_HV_CTRL PA16  // This constant is not used in the code, PA16 is accessed via registers directly



#define MAX_BRIGHTNESS 7  // The shift register is refreshed at 8.5KHz (somewhat arbitrary choice).  In order to avoid flicker, the "frame rate" should be >75Hz.
                            // The frame rate will be shift register refresh divided by MAX_BRIGHTNESS 8500/63 = 134Hz
                            // This constant can be set to other values (doesn't have to be a power of two), and the code will adjust the framerate inherently.



//Uncomment only one of these lines to indicate which high-voltage chip is being used
//#define USE_HV513
#define USE_HV507


#define HV_ADC_SETPOINT 800   // ADC value to which the high voltage will be regulated.  ADC is set to 10 bits, reference is 3.3V, and HV divider is 100, so divide this value by 3.1 (2^10/(3.3*100)) to get voltage.  600/3.1 = 193V
                               // BE CAREFUL! Setting this value too high can destroy hardware!   The HV513 has an absolute maximum of 275V, and there will be some overshoot/spikes above the set voltage.





#ifdef USE_HV513
#define NUM_PIXELS 4  //8-bit shift register, 4 pairs
#define SR_BYTES 1
#endif

#ifdef USE_HV507
#define NUM_PIXELS 32  //64-bit shift register, 32 pairs
#define SR_BYTES 8
#endif

SPISettings SPI_HV513(6000000, MSBFIRST, SPI_MODE0);  //8MHz limit for HV513
SPISettings SPI_HV507(8000000, MSBFIRST, SPI_MODE0);  //8MHz limit for HV7224

#define SR_TOGGLE_MASK 0x00000003  // Binary 11.  We'll shift this pair of 1's along the length of the shift register to control each output pair



//Global variables
int pixelvalues[NUM_PIXELS];  //Range is 0 (off) to MAX_BRIGHTNESS.  Originally, I used a floating point value (0 to 1.0), but this was too slow to process in the ISR.
byte srvalue[SR_BYTES];
int fade_step;

uint8_t serImage[1024];
int serIndex = 0;

int dispPhase = 0;
int dispRow = 0;

void setup() 
{ 
  //Clock distribution to the counters
  
  REG_GCLK_CLKCTRL = GCLK_CLKCTRL_CLKEN |         // Enable GCLK0 to TCC0 and TCC1
                     GCLK_CLKCTRL_GEN_GCLK0 |     // Select GCLK0
                     GCLK_CLKCTRL_ID_TCC0_TCC1 ;  // Feed GCLK0  TCC0, and TCC1
  while (GCLK->STATUS.bit.SYNCBUSY);              // Wait for synchronization


  REG_GCLK_CLKCTRL = GCLK_CLKCTRL_CLKEN |         // Enable GCLK0 to TCC2 and TC3
                     GCLK_CLKCTRL_GEN_GCLK0 |     // Select GCLK0
                     GCLK_CLKCTRL_ID_TCC2_TC3 ;   // Feed GCLK0  TCC2, and TC3
  while (GCLK->STATUS.bit.SYNCBUSY);              // Wait for synchronization





 //  The following counter will trigger an interrupt that initiates a SPI transaction with the shift register
 //  In an alternative system, the frequency output was used external of the MCU, but it's not needed any longer, so the port setup is commented out.
 //  DMA could have been used, but we're only sending either one or 8 bytes at 8.5KHz, so the DMA overhead may cancel any benefit for such a small transaction. Most of the time is spent in computation, not SPI transmission
 //  PORT->Group[0].PINCFG[8].reg |= PORT_PINCFG_PMUXEN;
 //  PORT->Group[0].PMUX[8 >> 1].reg = PORT_PMUX_PMUXE_F;
  
  REG_TCC1_WAVE |=  TCC_WAVE_WAVEGEN_NPWM;    // Setup simple PWM
  while (TCC1->SYNCBUSY.bit.WAVE);               // Wait for synchronization

  // Each timer counts up to a value set by the PER register
  REG_TCC1_PER = 100000;         // Set the frequency of the interrupt on TCC1  12MHz / 1200 = 10KHz ;  12MHz / 1400 = 8.57KHz
  while (TCC1->SYNCBUSY.bit.PER);                // Wait for synchronization
  
  REG_TCC1_CC0 = 100000;         // TCC0 CC0
  while (TCC1->SYNCBUSY.bit.CC0);                // Wait for synchronization

  //Enable an interrupt on a counter (CNT) event
  REG_TCC1_INTENSET |= TCC_INTENSET_CNT;

  //Specify the interrupting counter event to be an END event
  //This could have been done with an overflow interrupt event as well, but this arangement was left over from an alterative control system, and there is nothing wrong with using a CNT event
  REG_TCC1_EVCTRL |= TCC_EVCTRL_CNTSEL_END;

  NVIC_EnableIRQ(TCC1_IRQn);
   
  
//  REG_TCC1_CTRLA |= TCC_CTRLA_PRESCALER_DIV16 |    // Divide GCLK4 by 16 48MHz/16 = 3MHz
//                    TCC_CTRLA_ENABLE;             // Enable the TCC0 output
//  while (TCC1->SYNCBUSY.bit.ENABLE);              // Wait for synchronization





  //Setup PWM output for control of high voltage supply
  
  PORT->Group[0].PINCFG[16].reg |= PORT_PINCFG_PMUXEN;    //Enable pin multiplexer
  PORT->Group[0].PINCFG[16].reg |= PORT_PINCFG_PULLEN;    //Enable pull-down resistor on this pin.  In timer one-shot mode, the pin appears to go high-Z after the timer ends, but cannot find this in the documentation
  PORT->Group[0].PMUX[16 >> 1].reg = PORT_PMUX_PMUXO_E | PORT_PMUX_PMUXE_E;   // PA16 is an even-numbered pin, so PMUXE_E  means set this even numbered pin to port function "E", which is TCC2
  
  REG_TCC2_WAVE |=  TCC_WAVE_WAVEGEN_NPWM  | TCC_WAVE_POL(0xF) ;    // Setup normal PWM and invert polarity on all 4 CC channels
  while (TCC2->SYNCBUSY.bit.WAVE);                                  // "invert" means the output is normally low.  The counter starts at 0, and counts up, turning on the ouput when it matches CCx
  
  REG_TCC2_PER = 2000;         // Period:  set the frequency of the PWM on TCC2  3MHz/2000 = 1.5KHz
  while (TCC2->SYNCBUSY.bit.PER);               
  
  REG_TCC2_CC0 = 2001;         // CC is initially set *above* PER, which means the output will never go high
  while (TCC2->SYNCBUSY.bit.CC0);    


  //The counter is configured as a one-shot, and PA16 goes low when CC0 is reached or the cycle ends.  The pin actually appears to go Hi-Z when the cycle ends -- not sure.
  //This was done so that if the MCU halts for some unforeseen reason, the high voltage supply is shut down by default (fail safe).
  //This arrangement requires the ISR to run periodically in order for high voltage to be generated
  REG_TCC2_CTRLBSET = TCC_CTRLBSET_ONESHOT;
  while (TCC2->SYNCBUSY.bit.CTRLB);

  //Enable an interrupt on an overflow (the counter reaches PER)
  TCC2->INTENSET.reg = TCC_INTENSET_OVF;
  
  NVIC_EnableIRQ(TCC2_IRQn);
  NVIC_SetPriority(TCC2_IRQn, 0);
  
  REG_TCC2_CTRLA |= TCC_CTRLA_PRESCALER_DIV16 |    // Divide GCLK4 by 16  48MHz/16 = 3MHz
                    TCC_CTRLA_ENABLE;             // Enable the TCC2 output
  while (TCC2->SYNCBUSY.bit.ENABLE);              // Wait for synchronization





  //The default ADC setup for the M0 in Arduino is super slow -- over one millisecond per conversion, so we need to speed it up! 
  ADC->CTRLB.reg = ADC_CTRLB_PRESCALER_DIV32 |    // Divide Clock ADC GCLK by 32 (48MHz/32 = 1.5MHz)   Maximum allowed speed is about 2.1 MHz
                 ADC_CTRLB_RESSEL_10BIT;         // Set ADC resolution to 10 bits
  while(ADC->STATUS.bit.SYNCBUSY);                 // Wait for synchronization
  ADC->SAMPCTRL.reg = 0x00;                        // Set max Sampling Time Length to half divided ADC clock pulse




  pinMode(PIN_SPI_LE, OUTPUT);
  digitalWrite(PIN_SPI_LE, HIGH);

  SPI.begin();

}






void loop() {
int i;
int bytesRead;
float t = 0.0;
uint32_t tmp32;

byte b;

unsigned int lastTime = 0;

bytesRead = 0;
while(Serial.available() && bytesRead++ < 8)
 {
  b = Serial.read();
   if(b == 0)
    {
     serIndex = 0;
    }
   else if (serIndex < 1024)
    {
      serImage[serIndex++] = b >> 5;
    }  
 }


 /*
serImage[0] = 0;
serImage[1] = 3;
serImage[2] = 0;
serImage[3] = 0;

serImage[32] = 0;
serImage[33] = 0;
serImage[34] = 3;
serImage[35] = 0;

*/


//Set the active row
tmp32 = 1 << (31-dispRow);
//tmp32 = 1 << dispRow;

srvalue[0] = (tmp32 & 0xFF);
srvalue[1] = (tmp32 & 0xFF00) >> 8;
srvalue[2] = (tmp32 & 0xFF0000) >> 16;
srvalue[3] = (tmp32 & 0xFF000000) >> 24;



 for(i = 0 ; i<32; i++)
  {
    if (fade_step < serImage[i+dispRow*32])
      {
        srvalue[(i>>3)+4] &=  ~(1<<i%8);
      }
    else
      {
        srvalue[(i>>3)+4] |= (1<<i%8);
      }
      
  }


 digitalWriteDirect(PIN_SPI_LE, LOW);  //Latch enable is brought low while shifting in new data
  SPI.beginTransaction(SPI_HV507);
  SPI.transfer(srvalue[7]);
  SPI.transfer(srvalue[6]);
  SPI.transfer(srvalue[5]);
  SPI.transfer(srvalue[4]);
  SPI.transfer(srvalue[3]);
  SPI.transfer(srvalue[2]);
  SPI.transfer(srvalue[1]);
  SPI.transfer(srvalue[0]);
  SPI.endTransaction();
  digitalWriteDirect(PIN_SPI_LE, HIGH);
/*

for(i = 0 ; i<32; i++)
  {
    if (fade_step < serImage[i+dispRow*32])
      {
        srvalue[(i>>3)+4] &=  ~(1<<i%8);
      }
    else
      {
        srvalue[(i>>3)+4] &= ~(1<<i%8);
      }
      
  }

 digitalWriteDirect(PIN_SPI_LE, LOW);  //Latch enable is brought low while shifting in new data
  SPI.beginTransaction(SPI_HV507);
  SPI.transfer(srvalue[7]);
  SPI.transfer(srvalue[6]);
  SPI.transfer(srvalue[5]);
  SPI.transfer(srvalue[4]);
  SPI.transfer(srvalue[3]);
  SPI.transfer(srvalue[2]);
  SPI.transfer(srvalue[1]);
  SPI.transfer(srvalue[0]);
  SPI.endTransaction();
  digitalWriteDirect(PIN_SPI_LE, HIGH);

 */

 
if(dispRow++ >= 31)
  {
    fade_step = ++fade_step > MAX_BRIGHTNESS ? 0 : fade_step;
    dispRow = 0;
  }

  

 
 


}




//Don't forget that this MCU is also running a USB ISR if loaded normally through the Arduino IDE as an Adafruit Trinket M0.  This uses some CPU time, but also allows serial communication for new features or debugging.


//  This ISR will send data to the shift register.  Duration measured at under 20us for the HV513, runs at 8.5KHz, so 17% of CPU time.  Shifting the additional bytes for the HV507 brings the total time up to 40us
//  The code in here has to be very efficient.  I originally used a floating point array to store the pixel brightness values, and did floating point math in the ISR, but this was way too slow.
void TCC1_Handler() 
{
  //  __disable_irq();

  
 REG_TCC1_INTFLAG |= TCC_INTFLAG_CNT;
 NVIC_ClearPendingIRQ(TCC1_IRQn);
 //  __enable_irq();
 
}




//  Voltage regulation interrupt handler.  Duration measured at 15us, runs at 1.5KHz, so about 2% of all CPU time
void TCC2_Handler() 
{ 
  __disable_irq();
   NVIC_ClearPendingIRQ(TCC2_IRQn);
  TCC2->INTFLAG.reg = TCC_INTFLAG_OVF;
  
  if(analogRead(A0) < HV_ADC_SETPOINT)  //Voltage is below setpoint, so set CC0 to a low value to make the output go high near the beginning of the timing cycle.
    {
      REG_TCC2_CC0 = 40;        // This must not be set to 0 or "too low" a value.  The LT3468 datasheet specs a minimum low time of 20us. The counter is 3MHz, so this delay of "40" is 13us, plus the ISR latency.   
      while (TCC2->SYNCBUSY.bit.CC0);   //I've destroyed an LT3468 by cycling the control line too rapidly.  Also, it might work to keep this line high continuously, but it's not easy to do that with this MCU timer config, and
    }                                   // sometimes the LT3468 decides it's done charging and ignores the input, so the control line must be cycled often to have decent voltage control.
  else
    {
      REG_TCC2_CC0 = 2001;        // Voltage is above setpoint, so set CC0 above PER, causing the output to always be low
      while (TCC2->SYNCBUSY.bit.CC0); 
    }
  
  TCC2->CTRLBSET.reg = TCC_CTRLBSET_CMD_RETRIGGER;
  
  __enable_irq();
}




inline void digitalWriteDirect(int PIN, boolean val)
{
  if(val)  PORT->Group[g_APinDescription[PIN].ulPort].OUTSET.reg = (1ul << g_APinDescription[PIN].ulPin);
  else     PORT->Group[g_APinDescription[PIN].ulPort].OUTCLR.reg = (1ul << g_APinDescription[PIN].ulPin);
}










  /*
  REG_GCLK_GENDIV = GCLK_GENDIV_DIV(1) |          // Divide the 48MHz clock source by divisor 1: 48MHz/1=48MHz
                    GCLK_GENDIV_ID(4);            // Select Generic Clock (GCLK) 4
  while (GCLK->STATUS.bit.SYNCBUSY);              // Wait for synchronization

  REG_GCLK_GENCTRL = GCLK_GENCTRL_IDC |           // Set the duty cycle to 50/50 HIGH/LOW
                     GCLK_GENCTRL_GENEN |         // Enable GCLK4
                     GCLK_GENCTRL_SRC_DFLL48M |   // Set the 48MHz clock source
                     GCLK_GENCTRL_ID(4);          // Select GCLK4
  while (GCLK->STATUS.bit.SYNCBUSY);              // Wait for synchronization
*/
