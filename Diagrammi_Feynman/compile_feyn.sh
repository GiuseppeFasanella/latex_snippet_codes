#uso: source feyn.sh nome_file_latex (senza.tex)
latex $1.tex
mpost $1_diag.mp
latex $1.tex
dvips -E $1.dvi -o $1.eps
epstopdf $1.eps
mv *.pdf pdf
mv *.eps eps
rm *~
rm *.dvi
rm *.log
rm *.aux
rm *.mp
rm *.1
rm *.t1
rm *.out

