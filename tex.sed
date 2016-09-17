#sed -f tex.sed nome_file_da_modificare > reindirizzamento
s|a'|à|g
s|E'|È|g
s| e' | è |g
s|che'|ché|g
s|ne'|né|g
s|e'|è|g
s|i'|ì|g
s|o'|ò|g
s|u'|ù|g
#Capita che citazioni tipo "Tutto quello che ho" ->"Tutto quello che ò'
s|à'|a''|g
s|è'|e''|g
s|ì'|i''|g
s|ò'|o''|g
s|ù'|u''|g
