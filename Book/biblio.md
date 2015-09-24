\documentclass{article}

\usepackage[backend=bibtex]{biblatex}

\bibliography{<database>}  (con database= biblio.bib)% or
% \addbibresource{<database>.<extension>}
\begin{document}
\cite{<some-ref>}
\printbibliography
\end{document}
which requires a <database> file in .bib format. You then run:

LaTeX
BibTeX
LaTeX
Normally, you'd also select a bibliography style by loading this an an optional argument to the biblatex line

\usepackage[style=numeric-comp]{biblatex}
You should use the '8-bit' version of BibTeX as a minimum, rather than the ancient 7-bit BibTeX. At the Command line, this is used by doing

bibtex8 --wolfgang <filename>
where <filename> is the name of your LaTeX file.

E biblio.bib e' qualcosa del genere:

@article{DeSimone:2012fs,
      author         = "De Simone, Andrea and Matsedonskyi, Oleksii and Rattazzi,
                        Riccardo and Wulzer, Andrea",
      title          = "{A First Top Partner Hunter's Guide}",
      journal        = "JHEP",
      volume         = "1304",
      pages          = "004",
      doi            = "10.1007/JHEP04(2013)004",
      year           = "2013",
      eprint         = "1211.5663",
      archivePrefix  = "arXiv",
      primaryClass   = "hep-ph",
      reportNumber   = "CERN-PH-TH-2012-323, SISSA-31-2012-EP",
      SLACcitation   = "%%CITATION = ARXIV:1211.5663;%%",
}

