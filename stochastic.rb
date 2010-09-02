#!/usr/bin/env ruby

require "chunky_png"





(0..255).each { |valueRed|
(0..255).each { |valueGreen|
(0..255).each { |valueBlue|
(1..100).each { |valueAlphaPercentile|
		
	image = ChunkyPNG::Image.new(1, 1, ChunkyPNG::Color.rgba(
	
		valueRed, 
		valueGreen, 
		valueBlue, 
		255
		
	))
	
	image.save("r#{valueRed}_g#{valueGreen}_b#{valueBlue}_a#{valueAlphaPercentile}.png", :interlace => true)
	
}}}}




