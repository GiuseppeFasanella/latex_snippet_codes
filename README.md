# latex_snippet_codes
The logical blocks in Latex I use most of the time

**Come scrivo una AN**

sshcern

cd /afs/cern.ch/user/g/gfasanel/CERN_documents/svnrepo/

svn update notes/AN-15-015

eval \`./notes/tdr runtime -sh\`

cd notes/AN-15-015/trunk

tdr --style=an b AN-15-015

cp ../../tmp/AN-15-015_temp.pdf ~/scratch1/www/

Ti coviene anche mettere le ultime 2 istruzioni di compilazione in uno script `source compiler.sh`

Aprire un terminale locale e **montare la cartella delle immagini in locale**

sshfs gfasanel@lxplus.cern.ch:/afs/cern.ch/user/g/gfasanel/CERN_documents/svnrepo/notes/AN-15-015/trunk/figures Scrivania/remote_dir_AN

sudo umount /home/gfasanel/Scrivania/remote_dir_AN

e cosi' puoi lavorare in locale montando la cartella remota (certo con una connessione lenta e' un problema)
