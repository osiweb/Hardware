# OSI Preservation Project

## About

The goal of this project is to preserve the OSI designs, to recreate the authentic experience of hacking OSI hardware,
and also to help OSI owners restore, repair, or reconfigure their machines while keeping the machines as true to the original
feel as possible.

Descriptions and manuals for these boards can be found at Dave's OSI repository: http://osiweb.org/#Hardware.  Further descriptions, information, and photos can be found at Mark's OSI board catalog: http://osi.marks-lab.com/boards/boards.html

## Scans
Many of these boards were scanned by Mile High Test (http://www.mhtest.com/), now part of Gardien (http://na.gardien.com/). The gerbers
returned from the scanning process were processed as follows:
1.	Imported to Altium PCB format
2.	Borders removed from each layer, and placed on a separate mechanical layer, used to generate a separate board outline gerber.
3.	Replaced the scanner-generated stroke fonts with a closer approximation to original fonts (Arial/Arial Bold)
4.	Text was added: "OSI preservation project / http://glitchwrks.com/osi / http://osiweb.org "
5.	Added drill table
6.	Design Rule check performed, and new Gerber and drill files generated, with optional solder masks.
7.	Solder mask files are generated for top and bottom layers.  These can optionally be used.  Some boards came with solder mask on the bottom
layer, and many were prepared with no solder mask--especially earlier boards.
8.	README (read.me) file for PCB fab included.

## Manual reproductions
Several were meticulously recreated by hand by Grant (Klyball). These were
created by hand in a PCB program, based on scans of the original boards, and are
impressively close to the originals.

## Catalog

| Board | Description | Source |
| --- | --- | --- |
| [OSI 470](OSI_470) | Floppy disk controller (6850 ACIA + 6520 PIA); also usable as a parallel printer I/O card | Scanned, edited in Altium |
| [OSI 498](OSI_498) | Card extender for servicing boards outside the system cage | Scanned, edited in Altium |
| [OSI 502](OSI_502) | 6502 CPU board for C2/C4/C8 cassette systems | Scanned, edited in Altium |
| [OSI 505](OSI_505) | CPU and floppy interface board (ROM, ACIA, real-time clock, dual PIA) | Scanned, edited in Altium |
| [OSI 540B](OSI_540B) | B&W / color video board for C4/C8 (monochrome on the earlier C2-4P/C2-8P) | Scanned, edited in Altium |
| [OSI 542](OSI_542) | Polled keyboard; connects to the 540A/540B video board via a 16-pin ribbon | Scanned, edited in Altium |
| [OSI 542C](OSI_542C) | 542C keyboard parts list and PCB errata (documentation only, no PCB) | Reference docs |
| [OSI 573](OSI_573) | EPROM programmer head-end card (1K–8K EPROMs) | Scanned, edited in Altium |
| [OSI 575](OSI_575) | Head-end-card prototyping board: breadboard, clock generator, PIA, 16 switches and 16 LEDs | Scanned, edited in Altium |
| [OSI 580](OSI_580) | 8-row (48-line) backplane for C8P-style cases | Scanned, edited in Altium |
| [OSI 582](OSI_582) | 4-row backplane for C4P-style cases | Scanned, edited in Altium |
| [OSI 600D](OSI_600D) | Rev D OSI Superboard, faithful recreation with original Futaba keys and 2316 ROMs | Hand-recreated by Grant (Klyball) |
| [OSI 600D_keys+eprom](OSI_600D_keys+eprom) | Rev D OSI Superboard, updated to use Cherry MX keys and 2716 EPROM | Hand-recreated by Grant (Klyball) |
| [OSI 610](OSI_610) | Disk / RAM expansion for the 600 single-board computer | Hand-recreated by Grant (Klyball) |
| [OSI A15](OSI_A15) | Interface board (joysticks, modems, printers); 16 PIA lines plus 16-bit head-end I/O | Scanned, edited in Altium |

## Credits:

- Grant (Klyball): Klyball 600D (original version, and updated to accept Cherry keys and 2716 EPROM), Klyball 610D, Klyball D13.
