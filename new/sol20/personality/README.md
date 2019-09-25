# SOL-20 unversal peronality module

## Introduction

This is a "Universal" personality module for the SOL-20.  It's features include:
* Up to 16 ROM images, which can be selected by jumper configuration.
* Supports 27/28C256, 27/28C128, 27/28C64
* Supports remapping ROM, sysem RAM, and video to Fxxx, with a trivial mod to the motherboard (and re-assembling ROM images to run at F000)

## Parts
1. U1 - 74LS08
2. U2 - 27C256/28C256/27C128/28C128/27C64/28C64, or compatible parts.
3. RN1 - SIP resistor network with common pin 1.  Any 6-, 7-, or 8 resistor network in the 1K-20K range will be fine, 
as long as you place it on the board with pin 1 in the right spot.
1. RN2 - SIP resistor network with common pin 1.  Any 6, 7, or 8-resistor netork is fine, and you can use any value at all, 
or even just solder a wire across all the pins (no current should flow through the network).
1. JP1 - 2 x 8 pin 0.1" breakaway header.

## Notes

1.  For the SEL0-3 lines, a jumper pulls the line LOW, so the 000 block will require 3 jumpers. If you want a jumper to indicate a logical 1, then invert the ordering of the images in the (E)EPROM. I.E., place the first image at 111, second at 110, third at 101, etc. Since that can all be handled in a script, that's not a bad way to go.
1. For a 'C128, leave Sel3 open. For a 'C64, leave Sel 2 and Sel 3 open.

1. For a 27C256, place a jumper at the 27C256 position. For 28C256, 27/28C128, 27/28C64, place a jumper at "~2̅7̅C̅2̅5̅6̅"

1. To remap to Fxxx, make sure the selected ROM image is compiled for Fxxx, solder the wires to the motherboard as described in the DPMON manual, and either connect them to B2 and B3 on the connector, or to the last two pins on the personality module, and place a jumper in the "Map Fxxx" position. To revert to Cxxx, you can leave the mod wires plugged in. Make sure the selected image is compiled for Cxxx and remove the "Map Fxxx" jumper.

1. The Resistor network values are not critical at all. The two networks also don't need to be the same.




