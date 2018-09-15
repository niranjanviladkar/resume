lat01.pdf: lat01.ps
	ps2pdf lat01.ps lat01.pdf
	rm -rf lat01.aux lat01.dvi lat01.log lat01.nav lat01.out lat01.ps lat01.snm lat01.toc
	evince lat01.pdf &
	cp lat01.pdf Niranjan_Resume.pdf
lat01.ps: lat01.dvi
	dvips -o lat01.ps lat01.dvi
lat01.dvi: lat01.tex
	latex lat01.tex
clean:
	rm -rf lat01.aux lat01.dvi lat01.log lat01.nav lat01.out lat01.ps lat01.snm lat01.toc

