SRC_DIR = ..\spl
SRCS := $(wildcard $(SRC_DIR)/*.png)
DSTS := $(subst $(SRC_DIR),.,$(SRCS))

all: $(DSTS)

# force image to fit in screen bounds and rotate it so that -spl can use them
./%.png:: $(SRC_DIR)\%.png
	(cd $(SRC_DIR) && make status/$(notdir $<)) || echo
	sproc $< -o $@ -rsb 3840 2160 gam:1 -vb e -rot -90

clean:
	del /S *.png