# latex_snippet_codes
The logical blocks in Latex I use most of the time

C'e' un sito internet di Kyle Cranmer per scrivere le equazioni in latex e generare un' immagine di cui fare copia e incolla al volo in slides, mail ecc..

[unicodeit.net] (http://www.unicodeit.net/)

**Le figure** sono oggetti flottanti, vale a dire che e' Latex che decide dove inserirle al megliio, anche se tu fai di tutto per fargliele inserire dove dici tu.
Pero', se non ti interessa la caption, come e' spesso il mio caso, ti basta usare solo `\includegraphics`. Questo e' veramente l'unico modo in cui lo obblighi a piazzare l'immagine dove vuoi tu.

%\begin{figure}[H]

\begin{center}

\includegraphics[width=0.7\textwidth]{figures/imm.jpg}

\end{center}

%\caption{}

%\label{label}

%\end{figure}

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
