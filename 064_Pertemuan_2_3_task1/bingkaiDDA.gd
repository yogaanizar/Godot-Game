extends ColorRect


#put_pixel

func put_pixel(x, y, color):

	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]),PoolVector2Array())

#line_dda

func lineDDA(xa, ya, xb, yb, color):

	var dx = xb - xa

	var dy = yb - ya

	var steps

	var xIncrement

	var yIncrement

	var x = xa

	var y = ya

	if (abs(dx) > abs(dy)) :

		steps = abs(dx)

	else :

		steps = abs(dy)
	
	xIncrement = dx/ float(steps)

	yIncrement = dy/ float(steps)

	put_pixel(round(x), round(y), color)

	for k in steps:

		x += xIncrement

		y += yIncrement

		put_pixel(round(x), round(y), color)
		
func _draw():
	lineDDA(10,10,830,10, Color(1.0,0.0,0.0))
	lineDDA(10,10,10,470, Color(1.0,0.0,0.0))
	lineDDA(10,470,830,470, Color(1.0,0.0,0.0))
	lineDDA(830,10,830,470, Color(1.0,0.0,0.0))
	
	
	
		
