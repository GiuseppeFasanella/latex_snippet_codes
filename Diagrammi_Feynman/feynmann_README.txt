
Installare il software per latex che fa i diagrammi di feynmann
seguendo queste istruzioni:
http://osksn2.hep.sci.osaka-u.ac.jp/~taku/osx/feynmp.html

Sostanzialmente si tratta di copiare la cartella feynmf dove vuoi e poi
nella posizione dove è salvata "feynmf" e seguire le istruzioni che riporto qui (metti che le tolgono):


    Download feynmf.zip from CTAN site.
    Expand the zip file (by double clicking). (On Leopard, the folder shows up under "Downloads" in Dock.)
    From Terminal, go into the feynmf directory ( on Leopard, ~/Downloads/feynmf), and type
    % latex (or platex) feynmf.ins
    Next, copy 4 files into specific directories. If you are the only person who uses feynmf, you can copy them under your home directory.
    If you are using platex (to also handle Japanese) (with or without Mac OS X TeXShop), the directory is "~/texmf/" as shown below. If you are using teTeX + TeXShop, the directory is "~/Library/TeXShop/", instead.

    	% mkdir -p ~/texmf/tex/feynmf
    	% mkdir -p ~/texmf/metafont/feynmf
    	% mkdir -p ~/texmf/metapost/feynmf
    	% cp feynmf.sty ~/texmf/tex/feynmf
    	% cp feynmp.sty ~/texmf/tex/feynmf
    	% cp feynmf.mf ~/texmf/metafont/feynmf
    	% cp feynmp.mp ~/texmf/metapost/feynmf
    					



Fare un .tex a parte che si occupa solo di creare il diagramma
http://www.fysik.su.se/~stefans/computer/tutorial.txt


Per avere il diagramma in formato pdf bisogna lanciare=>

latex test.tex
mpost output.mp
latex test.tex
dvips -E test.dvi -o test.eps
epstopdf test.eps

ho scritto un piccolo script per velocizzare questa cosa: 
source feyn.sh nome_file_latex

Alla fine, ti trovi con il pdf del diagramma nella solita
cartella Immagini e puoi inserire il grafico nel latex della tesi


Tutorial di esempi qui:
http://osksn2.hep.sci.osaka-u.ac.jp/~taku/osx/fmfsamples.pdf

Manuale completo qui:
http://www.pd.infn.it/TeX/doc/latex/feynmf/manual.pdf
