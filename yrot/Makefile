SRC_DIR = ..\spl
SRCS := $(wildcard $(SRC_DIR)/*.png)
DSTS := $(subst $(SRC_DIR),.,$(SRCS))
SEMICLEAN_CMD := (powershell -ExecutionPolicy Bypass -File ./semiclean.ps1 -InDir $(SRC_DIR)) || touch status


all: $(DSTS) status
	$(SEMICLEAN_CMD)

# force image to fit in screen bounds and rotate it so that -spl can use them
./%.png:: $(SRC_DIR)\%.png
	(cd $(SRC_DIR) && make status/$(notdir $<)) || echo
	attrib -R $@
	sproc $< -o $@ -rsb 3840 2160 pad:t gam:1 -vb e -rot -90
	attrib +R $@

clean:
	attrib -R *.png
	del /S *.png
	
status:
	touch status

# clean out images derived from spl images that no longer exist and update status file if files were deleted
semiclean: status
	$(SEMICLEAN_CMD)