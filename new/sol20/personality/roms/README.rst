===========================================
ROM images for Universal Personality Module
===========================================

This directory contains 8K, 16K, and 32K ROM images for the Universal Personality Module, combining multiple individual 2K ROM images.

Assembly Sources
================

The assembly source for many of the images comes from Jim Battle's SOL20.org website,

https://www.sol20.org/personality.html

These include: dpmon.asm, solos1.asm, solos2.asm, solos3.asm, consol.asm, cuter.asm, and bootload.asm.
dpmonf.asm is a copy of dpmon.asm, with the start address set to F000h.

Please see Jim's excellent website for details on these personality module
images.

The solos_cpm.asm source file was taken from Mike Douglas' Deramp.com website:

https://deramp.com/processor_tech.html

This file is named "solos13c.asm" on the deramp.com website, and corresponds to the
solos_cpm ROM file distributed with the SOLACE emulator. From the README file on
deramp.com, solos13c is solos 1.3 patched to jump to the NorthStar controller
boot ROM, and to not erase the CP/M command line when RETURN is hit at the end
of the line. T


There are many ways to create the ROM images from the assembler source files.
This directory contains a Makefile to simplify creation of the ROM images,
allowing you to rearrange the images an any order you desire. Simply edit the
IMAGES_8K, IMAGES_16K, and IMAGES_32K variables in the makefile to rearrange the
images.

What's in the ROM images
========================


8K ROM (e.g., 2764)
-------------------

======== =====
Position Image
======== =====
0        Bootload (Solos variant with "TERM" command replaced with "BOOT" for Helios II)
1        Solos (Most common version)
2        Solos (Patched for compatibility with CPM line input)
3        DPMON (Micro Complex Dual Personality Monitor, compiled for Cxxx)
======== =====


16K ROM (e.g., 27128)
---------------------

======== =====
Position Image
======== =====
0        Bootload (Solos variant with "TERM" command replaced with "BOOT" for Helios II)
1        Solos (Most common version)
2        Solos (Patched for compatibility with CPM line input)
3        DPMON (Micro Complex Dual Personality Monitor, compiled for Cxxx)
4        DPMON (Micro Complex Dual Personality Monitor, compiled for Fxxx)
5        Consol (Stripped down Solos)
6        Solos (Alternate 1)
7        Solos (Alternate 2)
======== =====


32K ROM (e.g., 27256)
---------------------

This version just duplicates the first 8 images in the second 8 slots.

======== =====
Position Image
======== =====
0        Bootload (Solos variant with "TERM" command replaced with "BOOT" for Helios II)
1        Solos (Most common version)
2        Solos (Patched for compatibility with CPM line input)
3        DPMON (Micro Complex Dual Personality Monitor, compiled for Cxxx)
4        DPMON (Micro Complex Dual Personality Monitor, compiled for Fxxx)
5        Consol (Stripped down Solos)
6        Solos (Alternate 1)
7        Solos (Alternate 2)
8        Bootload (Solos variant with "TERM" command replaced with "BOOT" for Helios II)
9        Solos (Most common version)
10       Solos (Patched for compatibility with CPM line input)
11       DPMON (Micro Complex Dual Personality Monitor, compiled for Cxxx)
12       DPMON (Micro Complex Dual Personality Monitor, compiled for Fxxx)
13       Consol (Stripped down Solos)
14       Solos (Alternate 1)
15       Solos (Alternate 2)
======== =====

Building ROM images and Hex files
=================================

To build the ROM images, simply type "make". This will produce 8K, 16K, and 32K
binary and hex files.

To build the 8K image hex file, type "make personality_8k.hex".

To build the 8K image binary ROM file, type "make personality_8k.rom"

To build 16K or 32K hex or binary ROM files, the instructions are the same, but
use "16k" or "32k" instead of "8k"


Adding a ROM to the build
=========================

1. Place the CP/M assembler format source file in this directory.

1. Add the ROM to the IMAAGES_8K, IMAGES_16K, and/or IMAGES_32K file list as
   desired. Note that the 8K ROM can hold 4 images; the 16K ROM can hold 8
   images, and the 32K ROM can hold 16 images.

1. build the desired image by typing "make" with appropriate arguments, as described above.



Prerequisites / Tools
=====================

Creating the ROMs using the provided makefile requires a POSIX environment
(Linux, Unix, MacOS, cygwin, msys2, etc.) and the following tools:

1. A85 Assembler. (http://www.retrotechnology.com/restore/a85.html) This is a
   bare-bones cross assembler that supports the CP/M format. In particular, you
   need Herb Johnson's modified version supporting 8080 instructions. The link
   poinst to Herb Johnson's version at his website.
   
   NOTE: There is a difference between A85 and the CP/M 8080 assembler. The CP/M
   assembler maps a string "AB" to memory in order, with 41h at the low byte and
   42h at the high byte. A85 interprets the string as 4142h, then maps to memory
   in little-endian order, so 42h is the low byte and 41h is the high byte.

   In order to correctly assemble the source for the Processor Technology
   derived personalities (consol, solos, cuter), the command string definitions
   were edited to use "DB" instead of "DW". DPMON uses DB do define the command
   strings, so is inaffected by the difference in treatment.g
   
1. srecord. (http://srecord.sourceforge.net/) This is a versatile tool for
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
