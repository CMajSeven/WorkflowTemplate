NT ?= 8
SPLICE_CMD := -spl oh:3840 ew:1000000 mp:40 -flt .*png
ROTATE_CMD := -o %c -rot 90 -ccs 3840 2160 o:m
YROT := ../yrot
SPL := ../spl
DEPS := $(wildcard $(YROT)/*.png)
DEP_STATUS := $(YROT)/status
FLT := -flt .*png

zspl:
	(cd $(YROT) && make -j $(NT))
	make status NT=$(NT)

# horizontally splice images from yrot and rotate them back to normal
status: $(DEPS) $(DEP_STATUS)
	del /S *.png
	sproc $(YROT) $(FLT) $(SPLICE_CMD) -nt $(NT)
	sproc . $(ROTATE_CMD) -nt $(NT) $(FLT)
	touch status

clean:
	del status
	del /S *.png
