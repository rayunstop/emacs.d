pic $1.ms | groff -ms > $1.ps;
ps2epsi $1.ps
gs -dSAFER -dBATCH -dNOPAUSE -r200 -dEPSCrop  -dTextAlphaBits=4 -sDEVICE=png16m -sOutputFile=$1.png $1.epsi;
