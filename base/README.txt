This is where the raw images from the pdf goes. 
I sometimes do some cleanup here when it is more convenient to operate on full images.
e.g.
	- remove border (if it exists)
		- sometimes manually
		- sometimes with (-hp 0 -vp 0) -rb; this sometimes needs padding to 0 to make border touch side of image
	- removing page numbers and serial numbers
		- page numbers usually with -hp some_value -vp some_value to get the numbers in a reasonable location
		  followed by -fr even_page_coords -flt .*[02468]\.png and -fr odd_page_coords -flt .*[02468]\.png f
		- serial numbers sometimes same method as page numbers, sometimes with -stme
	- removing system dividers
		- usually with -stme; take some example dividers and use them to clear the rest
		- I usually take a divider line as well to use with -spl later
	- color filtering: -fg, reduces file size so I tend to do it early
	- color correction
		- I rarely do this but -rg can be used to darken/lighten/normalize colors
		- Don't have a mechanism yet to get average color yet though; I usually just darken a small amount until it looks good
