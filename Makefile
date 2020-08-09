IMAGES := $(wildcard spl/*.png)

thumb.png: $(word 1,$(IMAGES))
	sproc $< -o $@ -rsb w:1280 h:720 pad:t