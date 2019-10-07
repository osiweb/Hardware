ASSEMBLER = a85
IMAGESIZE = 2048

ASM = asm # CP/M assembler format
BIN = bin # raw binary format
ROM = rom # ROMmable image
IHEX = ihex
HEX = hex
PRN = prn
S19 = s19

# move all images from c000 or f000 to 0

HEXFMT = -intel
BINFMT = -binary
SFMT = -s19

ROMFLAGS = -fill 0 0 2048

ROM_8K = personality_8k.$(ROM)
ROM_16K = personality_16k.$(ROM)
ROM_32K = personality_32k.$(ROM)

HEX_8K = personality_8k.$(HEX)
HEX_16K = personality_16k.$(HEX)
HEX_32K = personality_32k.$(HEX)


IMAGES_8K = bootload.$(ROM) solos2.$(ROM) solos_cpm.$(ROM) dpmon.$(ROM)

IMAGES_16K = bootload.$(ROM) solos2.$(ROM) solos_cpm.$(ROM) dpmon.$(ROM) \
             dpmonf.$(ROM) consol.$(ROM) solos1.$(ROM) solos3.$(ROM)

IMAGES_32K = bootload.$(ROM) solos2.$(ROM) solos_cpm.$(ROM) dpmon.$(ROM) \
             dpmonf.$(ROM) consol.$(ROM) solos1.$(ROM) solos3.$(ROM) \
             bootload.$(ROM) solos2.$(ROM) solos_cpm.$(ROM) dpmon.$(ROM) \
             dpmonf.$(ROM) consol.$(ROM) solos1.$(ROM) solos3.$(ROM)


%.$(ROM): %.$(BIN)
	srec_cat $< $(BINFMT) $(ROMFLAGS) -o $@ $(BINFMT)

%.$(BIN): %.$(S19)
	srec_cat $< -offset - -minimum-addr $< -o $@ $(BINFMT)

%.$(S19) : %.$(IHEX)
	srec_cat $< $(HEXFMT) -o $@

%.$(IHEX) : %.$(ASM)
	$(ASSEMBLER) -o $@ $(ASMFLAGS) $<

%.$(PRN) : %.$(ASM)
	$(ASSEMBLER) -l $@ $(ASMFLAGS) $<
 
%.$(HEX): %.$(ROM)
	srec_cat $< $(BINFMT) -o $@ $(HEXFMT)

all: $(HEX_32K) $(HEX_16K) $(HEX_8K) 

$(ROM_8K): $(IMAGES_8K)
	cat $(IMAGES_8K) > $@

$(ROM_16K): $(IMAGES_16K)
	cat $(IMAGES_16K) > $@

$(ROM_32K): $(IMAGES_32K)
	cat $(IMAGES_32K) > $@

$(HEX_8K): $(ROM_8K)
$(HEX_16K): $(ROM_16K)
$(HEX_32K): $(ROM_32K)

cleanup:
	rm -f *.$(IHEX) *.$(S19) *.$(PRN) *.$(BIN) *~ #*

clean: cleanup
	rm -f *.$(HEX) *.$(ROM) $(GENERATED_FILES)
