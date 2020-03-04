# change to appropriate extension
SRCS := $(wildcard *.png)
MRKS := $(patsubst %,status/%,$(SRCS))

all: $(MRKS)

# remove transparencies, convert to 8-bit, padding; change to whatever you think is appropriate
# and update status file
status/%: % | status
	sproc $< -o %c -ct -exl -hp 50 -vp 50 -vb e 
	touch $@

status:
	mkdir status

clean:
	rd /s /q status
