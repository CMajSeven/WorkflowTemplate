Use sproc ..\base -spl here
Fiddle with the params as needed. Make sure all the pages are right-aligned, generally by -hp.
The parameters I sometimes change are 
	- ew:99999 to make the splicer never exceed the optimal height
	- div:divider_line.png to reinsert the divider for orchestral scores
	- oh:SOME_HEIGHT to change optimal height

This is generally the final stage for piano scores and I go to video editing from here with the images.
I may retroactively do cleanup here as well, and sometimes manually compress tall pages or use -vc to make them fit better.
The makefile here serves the same purpose as in cut. They essentially should be hard links of each other.

If there are many tall systems such that two can easily fit next to each other, I may move to horizontal splicing then (see yrot and zpl).
