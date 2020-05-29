NT ?= 8
SCMD := -spl oh:3840 ew:1000000 -flt .*png
RCMD := -o %c -rot 90 -ccs 3840 2160 o:m

# horizontally splice images from yrot and rotate them back to normal
all: ../yrot
	(cd $< && make -j $(NT))
	hsproc $< -flt .*png -o 1.%x $(SCMD) -nt $(NT)

clean:
	del /S *.png
