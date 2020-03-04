Use sproc ..\base -cut here.
Fiddle with the params as needed

This is generally where I do my touch ups.
	- -ccg
	- -str
	- -mlaa (only on low-quality binary images)
	- manual touch ups in paint.net (I have a couple of custom plugins)
	- what the makefile does 

I have a makefile set up to normalize images after clean ups and to fix what paint.net does to the images (e.g. 24-bit to 8-bit, padding).
You will need to install make and touch e.g. from GnuWin32

The process might end here if the images already fill up the screen well.