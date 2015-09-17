
ML0.pdf:
	xelatex ML0
	rm *.aux *.log *.nav *.out *.snm *.toc *.vrb
	acroread ML0.pdf

template.pdf:
	xelatex template

clean:
	rm *.aux *.log *.nav *.out *.snm *.toc *.vrb *.pdf
