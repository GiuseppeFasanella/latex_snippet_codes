#uso: source make.sh nome_file_latex (senza.tex)
lilypond-book $1.tex --output Assembling
cd Assembling/
latex $1.tex
dvips -E $1.dvi -o $1.eps
epstopdf $1.eps
cp $1.eps ../Spartiti/
cp $1.pdf ../Spartiti/
cd ../
rm -r Assembling/*


