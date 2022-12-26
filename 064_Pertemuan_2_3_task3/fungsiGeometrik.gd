extends ColorRect



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#put_pixel
#start draw
func _draw():
	var color = Color('fff')
	var color2 = Color('0049bf')
	Kartesian(410, 260, 150,color2)
	Linear(-1,4,410,260,Color('f505bd'))
	Kuadrat(2,3,5,410,260,Color('05f505'))
	Trigonometri("sin",210,240,Color('d5f505'))


func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]),PoolVector2Array())

#binkai
func IniBinkai(margin, xb, yb,color):	
	lineDDA(0 + margin, 0 + margin, xb - margin, 0 + margin, color)
	lineDDA(xb - margin, 0 + margin, xb - margin, yb - margin, color)
	lineDDA(xb - margin, yb - margin, 0 + margin, yb - margin, color)
	lineDDA(0 + margin, yb - margin, 0 + margin, 0 + margin, color)


#trigonometri
func Trigonometri(ratio,centerx,centery,color):
	var y
	for i in range(250):
		
		match ratio:
			"sin":
				y = sin(i)
			"cos":
				y = cos(i)
			"tan":
				y = tan(i)
		put_pixel(centerx+i,centery-y,color)
	pass

#Linearrrrrr y= 4-x
#y=mx+c
func Linear(m,c,centerx,centery,color):
	var x = ((0-c)/m)*30
	var y = (m*(0) + c)*30
	lineDDA(centerx + x,centery,centerx, centery-y,color)
	pass


#kuadrat
func Kuadrat(a,b,c,centerx,centery,color):
	var tx_puncak = TPuncak(b,a)
	var ty_puncak = (a*(tx_puncak*tx_puncak)) + (b*tx_puncak) + c

	
	for i in range(150):
		var dumpx = (tx_puncak - (float(i)/10))
		var dumpx2 = (tx_puncak + (float(i)/10))
		var dumpy = (a*(dumpx*dumpx)) + (b*dumpx) + c
		var dumpy2 = (a*(dumpx2*dumpx2)) + (b*dumpx2) + c
				
		put_pixel(centerx+dumpx,centery-dumpy,color)
		put_pixel(centerx+dumpx2,centery-dumpy2,color)
	pass

func TPuncak(b,a):
	return (-1*b)/2*a
	
#kartesian
func Kartesian(centerx,centery,length,color):
	var A = centerx - length
	var B = centerx + length
	var C = centery - length
	var D = centery + length
	for z in range(2):
		lineDDA(A, centery+z, B , centery+z, color)
		lineDDA(centerx+z, C, centerx+z , D, color)


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
	
	xIncrement = dx/float(steps)
	yIncrement = dy/ float(steps)
	put_pixel(round(x), round(y), color)

	for k in steps:
		x += xIncrement
		y += yIncrement
		put_pixel(round(x), round(y), color)
	

#Garis Bres
func lineBres(xa, ya, xb, yb, color):
	var dx = abs(xa - xb)
	var dy = abs(ya - yb)
	var p = 2 * dy - dx
	var twoDy = 2 * dy
	var twoDyDx = 2 * (dy - dx)
	var x
	var y
	var xEnd

	if xa > xb :
		x = xb
		y = yb
		xEnd = xa
	else :
		x = xa
		y = ya
		xEnd = xb
		put_pixel(x, y, color)

	while x < xEnd :
		x += 1
		if p < 0 :
			p += twoDy
		else :
			y += 1
			p += twoDyDx
		put_pixel(x, y, color)
