all: main.pdf clean
	echo "main.pdf and clean..."

main.pdf: main.tex main.bib
	xelatex -synctex=1 -shell-escape -interaction=nonstopmode main.tex > /dev/null
	bibtex main
	xelatex -synctex=1 -shell-escape -interaction=nonstopmode main.tex > /dev/null
	xelatex -synctex=1 -shell-escape -interaction=nonstopmode main.tex > /dev/null

.PHONY: clean
clean:
	rm -fv main.aux main.bbl main.blg main.log main.synctex.gz main.out missfont.log
	rm -rfv _minted-main


