name=$1
name=${name/./} #Sostituisce un eventuale punto con niente                                                                                                                      
tdr --style=an b $name
cp ../../tmp/${name}_temp.pdf ~/scratch1/www/

