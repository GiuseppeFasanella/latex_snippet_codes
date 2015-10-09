cd /afs/cern.ch/user/g/gfasanel/CERN_documents/svnrepo/
svn update notes/$1
eval `./notes/tdr runtime -sh`
cd notes/$1/trunk
tdr --style=an b $1
cp ../../tmp/$1_temp.pdf ~/scratch1/www/
cp ~/compiler_note_pas.sh ./
