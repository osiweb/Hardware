# Sol-20 unversal peronality module

## Introduction

This is a "Universal" personality module for the SOL-20.  It's features include:
* Up to 16 ROM images, which can be selected by jumper configuration.
* Supports 27/28C256, 27/28C128, 27/28C64
* Supports remapping ROM, sysem RAM, and video to Fxxx, with a trivial mod to
  the motherboard (and re-assembling ROM images to run at F000). The mod does
  not require cutting any traces, so it's fully reversible and doesn't require
  modifications to other personality modules to be used with the modified
  mainboard, unlike the modification described in the Micro Complex manual.

## Parts
1. U1 - 74LS08
1. U2 - 27C256/28C256/27C128/28C128/27C64/28C64, or compatible parts.
1. RN1 - SIP resistor network with common pin 1. Any 6-, 7-, or 8 resistor
network in the 1K-20K range will be fine, as long as you place it on the board
with pin 1 in the right spot.
1. RN2 - SIP resistor network with common pin 1. Any 6, 7, or 8-resistor netork
is fine, and you can use any value at all, or even just solder a wire across all
the pins (no current should flow through the network).
1. JP1 - 2 x 8 pin 0.1" breakaway header.

## Fxxx mapping modification - No flying wires (Requires mainboard removal, which is somwhat involved)
1. Remove the SOL-PC mainboard from the case.
1. Solder a jumper wire between pin 3 of U22 and pin B2 of J5 (the personality module connector.)
1. Solder a jumper wire between pin 5 of U22 and pin B3 of J5.
1. Reinstall the SOL-PC mainboard and reassemble.

## Fxxx mapping modification - no mainboard jumpers (Use flying wires instead)
1. With the personality module installed, estimate the length of wire you need
   to route neatly between pin 3 of U22 and the rightmost header pins (when the
   SOL is facing you, as if you are typing.)
1. Cut 2 wires of the appropriate length (either twist them together, use a
   twisted pair, or two wires from a ribbon cable.)
1. Install a 2-pin socket at the end of the two wires (crimp pins + header casing)
1. Solder one wire to pin 3 of U22.
1. Solder the other wire to pin 5 of U22.
1. Plug the female connector into the rightmost pair of pins on the Personality Module's pin header.
1. Route the wires neatly using tie wraps where possible.

## Fxxx remapping (with one of the mods above)
1. To remap the ROM, system RAM, and video to Fxxx, make sure the selected ROM
   image is compiled for Fxxx, place a jumper in the "Map Fxxx" position. 
1. To revert to Cxxx, make sure the selected image is compiled for Cxxx and
   remove the "Map Fxxx" jumper.
   
## Notes

1. For the SEL0-3 lines, a jumper pulls the line LOW, so the 000 block will
   require 3 jumpers. If you want a jumper to indicate a logical 1, then invert
   the ordering of the images in the (E)EPROM. I.E., place the first image at
   111, second at 110, third at 101, etc. Since that can all be handled in a
   script, that's not a bad way to go.
1. For a 'C128, leave Sel3 open. For a 'C64, leave Sel 2 and Sel 3 open.
1. For a 27C256, place a jumper at the 27C256 position. For 28C256, 27/28C128,
   27/28C64, place a jumper at "~2̅7̅C̅2̅5̅6̅"

1. The Resistor network values are not critical at all. The two networks also don't need to be the same.




