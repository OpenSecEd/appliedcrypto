.PHONY: all
all: sidechannels-slides.pdf

SRC=		sidechannels-slides.tex contents.tex abstract.tex sidechannels.bib
SRC+= 		acoustic-spectrum.jpg acoustic-bits.jpg
SRC+= 		acoustic-setup.jpg acoustic-mobile.jpg
SRC+= 		physical-setup.png physical-ethernet.png physical-human.png
SRC+= 		physical-spectrum.png
SRC+= 		em-spectrum.png em-pita.png em-pita-detailed.png
SRC+= 		em-laptop.png

sidechannels-slides.pdf: ${SRC}

acoustic-spectrum.jpg:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/acoustic/img/web_manykeys-acoustic.jpg

acoustic-bits.jpg:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/acoustic/img/web_bit-extraction.jpg

acoustic-setup.jpg:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/acoustic/img/web_portable-setup.jpg

acoustic-mobile.jpg:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/acoustic/img/resized_mobile-attack.jpg

physical-setup.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/handsoff/wire.png

physical-ethernet.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/handsoff/far-end-of-cable.png

physical-human.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/handsoff/touch.png

physical-spectrum.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/handsoff/resized_chassis-rattlew-n200.png

em-spectrum.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/radioexp/EM-rattlew-n200.png

em-pita.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/radioexp/untethered-pita-with-baudline---w800.jpg

em-pita-detailed.png:
	wget -O $@ https://www.cs.tau.ac.il/~tromer/radioexp/untethered-pita-closeup---annotated.png


bibliography.bib: bibliography.bib(sidechannels.bib)
bibliography.bib(%): %


.PHONY: clean
clean:
	${RM} sidechannels-slides.pdf
	${RM} bibliography.bib

.PHONY: distclean clean-depends clean-figures
clean-depends distclean: clean-figures
clean-figures:
	${RM} acoustic-spectrum.jpg acoustic-bits.jpg
	${RM} acoustic-setup.jpg acoustic-mobile.jpg
	${RM} physical-setup.png physical-ethernet.png physical-human.png
	${RM} physical-spectrum.png
	${RM} em-spectrum.png em-pita.png em-pita-detailed.png


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
