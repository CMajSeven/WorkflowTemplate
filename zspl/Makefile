NT ?= 8
SCMD := -spl oh:3840 ew:1000000 -flt .*png
RCMD := -o %c -rot 90 -ccs 3840 2160 o:m
DEPS = $(wildcard ../spl/*.png)

# horizontally splice images from yrot and rotate them back to normal
status: $(DEPS)
	(cd ../yrot && make -j $(NT))
	hsproc ../yrot -flt .*png $(SCMD) -nt $(NT)
	touch status

clean:
	del status
	del /S *.png
