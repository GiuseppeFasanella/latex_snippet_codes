da *Amerigo*

`work_on_note AN-15-222`

`fai le modifiche che vuoi`

`source compiler_note_pas.sh AN-15-222` (puoi tabbare)

**La logica in dettaglio e' questa**


work_on_note e' un mio alias di bash

```
function note(){
#$1 e' per esempio AN-15-222
if [[ $1 = "" ]]; then echo "you should specify a number for your note"; else ssh -Y -t gfasanel@lxplus.cern.ch "source note_pas.sh '$1'; bash -l"; fi
}

##my alias                                                                                                        
    alias work_on_note=note
```

* Quindi la cosa in ordine "cronologico" procede cosi'

```
ssh -Y -t gfasanel@lxplus.cern.ch 'source note_pas.sh AN-15-222; bash -l'
```

note_pas.sh si trova sul server a cui ti sei connesso via ssh:  https://github.com/GiuseppeFasanella/latex_snippet_codes/blob/master/note_pas.sh

compiler_note_pas.sh anche si trova sul server:
https://github.com/GiuseppeFasanella/latex_snippet_codes/blob/master/compiler_note_pas.sh

compiler_note_pas.sh compila il latex e lo pubblica sulla mia web space



