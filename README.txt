This repo is a guide to how I generally make videos.

For vector pdfs, use gs_conversion.bat to convert the pdf to images, e.g. .\gs_conversion.bat sample.pdf
For raster pdfs, use images_conversion.bat to convert, e.g. .\images_conversion.bat sample.pdf

I then proceed into base.
I always back everything up with git in case I mess something up.

Dependencies
	- ghostscript (for vector pdfs)
	- pdfimages (for raster pdfs)
	- sproc (https://github.com/edwardx999/ScoreProcessor)
	- make (e.g. from GnuWin32)
	- touch (e.g. from GnuWin32)
	- powershell
	- cmd
