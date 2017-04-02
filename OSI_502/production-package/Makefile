PROJECT=OSI_502
VARIANTNAME=Production
PCBREV=1
PRJREV=1.0.0
PCBNAME=$(PROJECT)-Rev_$(PCBREV)
ZIPFILE=$(PROJECT).zip
PCBZIPFILE=$(PCBNAME)-pcbfab.zip
BOMFILE=BOM-$(PRJNAME)-$(VARIANTNAME).xlsx
READMEFILE=README.doc
RENDERFILES=Renderings-$(PCBNAME).PDF
SCHEMFILE=Schematic*

LABELSDIR=labels_dir
PROGDIR=programming_files_dir
WORKDIR=work_instructions_dir
DOCDIR=doc_dir

all: zip

clean:
	rm -rfv *.jpg *.pdf *.PDF *.png *.zip *.xls *.xlsx "Status Report.Txt"
	(cd PCB_dir; make clean)

jpg: $(PCBNAME).png
	(for i in $.jpg; do convert ${i%%png}jpg; done)

zip: $(PCBZIPFILE)
	echo removing old zip. . .
	rm -rf $(ZIPFILE)
	echo creating zip. . .
	zip -9r $(ZIPFILE) $(PCBZIPFILE)
	zip -9r $(ZIPFILE) README.doc
	zip -9r $(ZIPFILE) $(DOCDIR)


$(PCBZIPFILE):
	cd PCB_DIR; make zip
