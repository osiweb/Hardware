BASENAME = OSI_470
REV = -REV_1
VARIANT=
NAME=$(BASENAME)$(REV)$(VARIANT)
BARENAME=$(BASENAME)$(REV)
TOP_SOLDER = GTS
TOP_COPPER = GTL
TOP_PASTE = GTP
TOP_SILK = GTO
BOT_SOLDER = GBS
BOT_COPPER = GBL
BOT_PASTE = GBP
BOT_SILK = GBO
GND1 = GP1
GND2 = GP2
OUTLN = GM1
PWR1 =
PWR2 =

DRILL = TXT
DRILDIR = NC\ Drill
GERBDIR = Gerber
FAB_FILES = $(NAME).jpg $(BARENAME)-pcb.PDF $(BARENAME)-drill_drawing.PDF
ZIPFILE = ../$(NAME)-pcbfab.zip

all: copy

clean:
	rm -rfv Gerber "NC Drill" $(NAME)* $(BARENAME)* *.jpg *.pdf *.PDF *.png "Status Report.Txt"

gvp: gvp_template.gvp
	sed -e "s/@@NAME@@/$(NAME)/" < $< > $(NAME).gvp

jpg: $(NAME).png
	for i in *.png; do echo $$i '->' $${i%%png}jpg; convert $$i $${i%%png}jpg; done



copy:
	cp $(DRILDIR)/$(NAME).$(DRILL) .
	cp $(GERBDIR)/$(NAME).$(TOP_COPPER) .
	cp $(GERBDIR)/$(NAME).$(BOT_SOLDER) .
	cp $(GERBDIR)/$(NAME).$(BOT_COPPER) .
	cp $(GERBDIR)/$(NAME).$(OUTLN) .
#	cp $(GERBDIR)/$(NAME).$(TOP_SOLDER) .
#	cp $(GERBDIR)/$(NAME).$(GND1) .
#	cp $(GERBDIR)/$(NAME).$(GND2) .
#	cp $(GERBDIR)/$(NAME).$(PWR1) .
#	cp $(GERBDIR)/$(NAME).$(PWR2) .
#	cp $(GERBDIR)/$(NAME).$(BOT_PASTE) .
#	cp $(GERBDIR)/$(NAME).$(BOT_SILK) .


gerbv:
	gerbv \
	$(NAME).$(OUTLN) \
	$(NAME).$(DRILL) \
	$(NAME).$(TOP_COPPER) \
	$(NAME).$(BOT_SOLDER) \
	$(NAME).$(BOT_COPPER)
#	$(NAME).$(GND1) \
#	$(NAME).$(GND2)
#	$(NAME).$(BOT_PASTE) \
#	$(NAME).$(BOT_SILK) \
#	$(NAME).$(PWR1) \
#	$(NAME).$(PWR2) \
#	$(NAME).$(TOP_SOLDER) \
#	$(NAME).$(TOP_PASTE) \
#	$(NAME).$(TOP_SILK) \


zip:
	rm -f $(ZIPFILE)
	zip -9 $(ZIPFILE) \
	read.me \
	$(NAME).$(OUTLN) \
	$(NAME).$(DRILL) \
	$(NAME).$(TOP_COPPER) \
	$(NAME).$(BOT_SOLDER) \
	$(NAME).$(TOP_SOLDER) \
	$(NAME).$(BOT_COPPER) \
	$(FAB_FILES)
#	$(NAME).$(GND1) \
#	$(NAME).$(GND2) \
#	$(NAME).$(TOP_PASTE) \
#	$(NAME).$(TOP_SILK) \
#	$(NAME).$(BOT_PASTE) \
#	$(NAME).$(BOT_SILK) \
#	$(NAME).$(PWR1) \
#	$(NAME).$(PWR2) \
