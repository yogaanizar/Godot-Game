extends "res://064_Pertemuan_3_4_task1/primitif.gd"

const padding = 80
var dashed_length = 10

func draw_frame():
	line_bresenham(padding,padding,width-padding,padding,Color.white) #top
	line_dda(padding,padding,padding,height-padding,Color.white) #left
	line_dda(width-padding,padding,width-padding,height-padding,Color.white) #right
	line_bresenham(padding,height-padding,width-padding,height-padding,Color.white) #bottom

func draw_cartesian():
	line_bresenham(padding,center_y,width-padding,center_y,Color.white) #middle horizontal
	line_dda(center_x,padding,center_x,height-padding, Color.white) #middle vertical

func line_dda(xa: float, ya: float, xb: float, yb: float, color: Color, dashed: bool = false):
	var dx = xb - xa
	var dy = yb - ya
	var steps = 0
	
	if(abs(dx) > abs(dy)):
		steps = abs(dx)
	else:
		steps = abs(dy)
		
	var xIncrement = dx / steps
	var yIncrement = dy / steps
	var x = xa
	var y = ya
	
	var length = (Vector2(xb, yb) - Vector2(xa, yb)).length()
	if(length <= dashed_length):
		dashed = false
	
	put_pixel(round(x), round(y), color)
	# print(steps)
	for n in steps:
		#print(n)
		x += xIncrement
		y += yIncrement
		if(dashed == false or n/dashed_length % 2 == 0 or n == steps - 1) :
			put_pixel(round(x), round(y), color)
	#print('end')

func line_bresenham(xa: int, ya: int, xb: int, yb: int, color: Color):
	var dx = abs(xa - xb)
	var dy = abs(ya - yb)
	
	var p = 2 * dy - dx
	var twoDy = 2 * dy
	var twoDyDx = 2 * (dy - dx)
	
	var x
	var y
	var xEnd
	
	if(xa > xb):
		x = xb
		y = yb
		xEnd = xa
	else:
		x = xa
		y = ya
		xEnd = xb
	
	put_pixel(x, y, color)
	
	while(x < xEnd):
		x += 1
		if(p < 0):
			p += twoDy
		else:
			y += 1
			p += twoDyDx
		put_pixel(x, y, color)
