# EL_driver_multi
Schematic, PCB, and firmware to build a multi-channel electroluminescent display driver

The MCU must be programmed with Adafruit's bootloader.  The programming pins are exposed on this PCB, but a potentially easier way is to buy a Trinket M0, and use a hotplate to remove the MCU, button, decoupling caps, LEDs current-limiting resistors and USB connector, and add those parts to this PCB.


The firmware for the driving of linear display elements (EL_array_linear) is pretty stable and well-commented.  The firmware for matrix driving (EL_array_matrix) is much more experimental.  It's accompanying Processing.org sketch is also a pretty hacked mod of Paul Stoffregen's original OctoWS2811 driver.

Driving EL matrix displays is not straightforward because scanning the matrix will undesirably illuminate pixels that are intended to be dark. This problem manifests as vertical bars in the image (when horizontal rows are scanned).  This could be improved with a tri-state high voltage shift register.

Video of my talk at Hackaday Supercon 2018, starting at the EL driver section:   https://youtu.be/Tx2B5hI4w1U?t=1473

<img src="https://cdn.hackaday.io/images/4878161541658312551.png">
