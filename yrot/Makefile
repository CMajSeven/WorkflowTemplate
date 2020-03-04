SRCS := $(wildcard src/*.png)
DSTS := $(notdir $(SRCS))

all: $(DSTS) | src

# update src file
# force image to fit in screen bounds and rotate it so that -spl can use them
%.png: src\\%.png
	(cd src && make status/$(notdir $<))
	sproc $< -o $@ -rsb 3840 2160 gam:1 -vb e -rot -90

# soft link to the spliced images directory, actually just a workaround for winmake not properly handling ..\spl
src:
	cmd /c "mklink /d src ..\spl"
	make -j 8

clean:
	del /S *.png
