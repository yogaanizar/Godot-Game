extends ColorRect

func _ready():
	pass 
	
func _draw():
	#var color1 = Color(255,255,255)
	var color2 = Color('#b7e8ed')
	#lineDDA(0, 0, 1110, 650, color1)
	createKartesian(420, 240, 200,color2)
	
#membuat bingkai
func createBingkai(margin, xb, yb,color):	
	lineDDA(0 + margin, 0 + margin, xb - margin, 0 + margin, color)
	lineDDA(xb - margin, 0 + margin, xb - margin, yb - margin, color)
	lineDDA(xb - margin, yb - margin, 0 + margin, yb - margin, color)
	lineDDA(0 + margin, yb - margin, 0 + margin, 0 + margin, color)

#membuat garis kartesian
func createKartesian(centerx,centery,length,color):
	var A = centerx - length
	var B = centerx + length
	var C = centery - length
	var D = centery + length
	for i in range(10):
		lineDDA(A, centery+i, B , centery+i, color)
		lineDDA(centerx+i, C, centerx+i , D, color)

#algoritma lineDDA
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

#membuat 1 pixel
func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]),PoolVector2Array())
#algoritma line Bresemham
