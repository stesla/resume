all: pdf

clean:
	rm -f *.dvi *.ps *.pdf *.aux *.log

dvi: clean
	latex resume

ps: dvi
	dvips -t letter -Ppdf -o resume.ps resume

pdf: ps
	ps2pdf resume.ps
