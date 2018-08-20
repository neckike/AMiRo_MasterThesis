filename=AMiRo



pdf:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.toc *.xml
	pdflatex ${filename}.tex
	biber ${filename}
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex

view: pdf
	gvfs-open ${filename}.pdf
	rm -f *.aux *.bbl *.bcf *.blg *.log *.toc *.xml *.lot *.lof

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.toc *.xml *.lot *.lof
