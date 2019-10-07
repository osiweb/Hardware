ROM images for Universal Personality Module

Several of the ROM images come from Jim Battle's SOL20.org website,

https://www.sol20.org/personality.html

These include: dpmon.asm, solos1.asm, solos2.asm, solos3.asm, consol.asm, cuter.asm, and bootload.asm.
dpmonf.asm is a copy of dpmon.asm, with the start address set to F000h.

Please see Jim's excellent website for details on these personality module
images.

The solos_cpm from Mike Douglas' Derramp.com website:

https://deramp.com/processor_tech.html

This file is named "solos13c" on the deramp.com website, and corresponds to the
solos_cpm ROM file distributed with the SOLACE emulator. From the README file on
deramp.com, solos13c is solos 1.3 patched to jump to the NorthStar controller
boot ROM, and to not erase the CP/M command line when RETURN is hit at the end
of the line. T


There are many ways to create the ROM images from the assembler source files.
This directory contains a Makefile to simplify creation of the ROM images,
allowing you to rearrange the images an any order you desire. Simply edit the
IMAGES_8K, IMAGES_16K, and IMAGES_32K variables in the makefile to rearrange the
images.

Building ROM images and Hex files:

To build the ROM imgaes, simply type "make". This will produce 8K, 16K, and 32K
binary and hex files.

To build the 8K image hex file, type "make personality_8k.hex".

To build the 8K image binary ROM file, type "make personality_8k.rom"

To build 16K or 32K hex or binary ROM files, the instructions are the same, but
use "16k" or "32k" instead of "8k"


To add a ROM to the build:

1) Place the CP/M assembler format source file in this directory.

2) Add the ROM to the IMAAGES_8K, IMAGES_16K, and/or IMAGES_32K file list as
   desired. Note that the 8K ROM can hold 4 images; the 16K ROM can hold 8
   images, and the 32K ROM can hold 16 images.

3) build the desired image by typing "make" with appropriate arguments, as described above.



Prerequisites

Creating the ROMs using the provided makefile requires a POSIX environment
(Linux, Unix, MacOS, cygwin, msys2, etc.) and the following tools:

1) A85 Assembler. (http://www.retrotechnology.com/restore/a85.html) This is a
   bare-bones cross assembler that supports the CP/M format. In particular, you
   need Herb Johnson's modified version supporting 8080 instructions. The link
   poinst to Herb Johnson's version at his website.
   
2) srecord. (http://srecord.sourceforge.net/) This is a versatile tool for
   transforming files between various formats including binary, intel hex, and
   others. I used this tool rather than the many bin2hex, hex2bin, etc. floating
   around because it is easy to find and very flexible.

   One note about srecord. It includes a filter to offset a file from its base
   address by any arbitrary offset. It also provides a way to use the starting
   address of the rom as a parameter to any filter. So a hex file which starts
   at, for example, 0xC000 can be moved to 0x0000 (for example, to position
   within a ROM). There is also a facility to move the first address to location
   0 (-offset - -minimum-addr file), listed in one of the examples. However, I
   could only get this to work when loading s-record format files.

   Also, srec_cat is able to pad a file to a specific size, such as 2048 bytes,
   but I could not get this to work in the same pass as the relocation step, so
   I broke this out as a separate step.

   If anyone can get srec_cat to this using the -offset flag, let me know aand
   I'll clean up the Makefile. Similarly, if anyone can figure out a way to get
   srec_cat to convert the intel hex assembler output into a padded 2048-byte
   binary file in one command line, let me know.
