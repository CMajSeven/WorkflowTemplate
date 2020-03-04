SET input=%1
mkdir base
gswin64c -q -dQUIET -dSAFER -dBATCH -dNOPAUSE -dNOPROMPT -dMaxBitmap=500000000 -dAlignToPixels=0 -dGridFitTT=2 -sDEVICE=pnggray -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -r600  -sOutputFile=base/%%d.png %input%
