"overrides/hudcrosshair/file.res"
{
	JarCrosses
	{	
		//change these from 0 to 1 to enable this
		"visible" "1"
		"enabled" "1"
	
		"fgcolor" "255 255 255 255"		// color, Red Green Blue Alpha
										// white is 255 255 255 255
										// black is 0 0 0 255

		// AA = antialiasing (pizelated or smoothed), 1 or 0
		// OL = outlined, 1 or 0
		// Blur may be 0-3
		// Size may be any even number between 6 and 40
		"font" "JarCrosses-AA:1-OL:0-blur:0-size:34"		// edit the values here for different font effects
		
		"labelText" "b"					// crosshair used, check out _MagnumHUD/fonts/JarCrosses.png
	}
	
	// An optional second crosshair, below the first, to act as a shadow
	JarCrossesShadow
	{	
		//change these from 0 to 1 to enable this
		"visible" "1"
		"enabled" "1"
	
		"fgcolor" "0 0 0 255"		// color

		// antialiasing y/n, outlined y/n, blur 0-3, size 6-40 even
		"font" "JarCrosses-AA:1-OL:0-blur:2-size:34"
		
		"labelText" "b"					// crosshair used
	}
}