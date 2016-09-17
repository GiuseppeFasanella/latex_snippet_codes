for f in `ls *.tex`; do
    f=$(echo $f | sed 's|.tex||')
    echo $f
    sed -f tex.sed ${f}.tex > ${f}_temp.tex
    #se sei sicuro:                                                             
    mv ${f}_temp.tex ${f}.tex
done

