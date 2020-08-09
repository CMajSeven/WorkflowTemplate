# change to appropriate extension
SRCS := $(wildcard *.png)
MRKS := $(patsubst %,status/%,$(SRCS))
FRONT_CMD := -ct -exl
BACK_CMD := -hp 50 -vp 50

all: $(MRKS)

# remove transparencies, convert to 8-bit, padding; change to whatever you think is appropriate
# and update status file
status/%: % | status
	sproc $< -o %c -vb e $(FRONT_CMD) $(BACK_CMD)
	touch $@

straighten: | status
	sproc . $(FRONT_CMD) -str $(BACK_CMD)
	touch $(MRKS)
	
status:
	mkdir status

clean:
	rd /s /q status
