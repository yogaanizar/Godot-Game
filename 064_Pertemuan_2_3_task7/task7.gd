extends ColorRect



# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var mulai = false
var x_limit = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if(mulai):
		add_x_limit()
	pass
	

func add_x_limit():
	if(x_limit < 840):
		x_limit += 1
		update()
	else:
		mulai = false
		

#start draw
func _draw():
	var centerx = 480
	var centery = 840
	var biru = Color('0011ff')


	
	if(mulai):
#Kotak
		square(50,50,biru)
#Kotak Panjang
		rectangular(100,50,Vector2(200,50), biru)
#Segitiga
		segitigaSiku(Vector2(120,50),Vector2(120,100),Vector2(170,100),biru)
		
#Trapesium siku-siku
		rectangular(50,50,Vector2(320,50),biru)
		segitigaSiku(Vector2(370,50),Vector2(370,100),Vector2(390,100),biru)
		lineDDA(370,50,370,100,biru)


#Trapesium sama kaki
		rectangular(50,50,Vector2(440,50),biru)
		segitigaSiku(Vector2(440,50),Vector2(440,100),Vector2(420,100),biru)
		segitigaSiku(Vector2(490,50),Vector2(490,100),Vector2(510,100),biru)
		lineDDA(440,50,440,100,biru)
		lineDDA(490,50,490,100,biru)

#JajarGenjang
		rectangular(50,50,Vector2(560,50),biru)
		segitigaSiku(Vector2(560,50),Vector2(560,100),Vector2(530,100),biru)
		segitigaSiku(Vector2(610,50),Vector2(610,100),Vector2(640,50),biru)
		lineDDA(560,50,560,100,biru)
		lineDDA(610,50,610,100,biru)

func square(sisi, point, color):
	lineDDA_Dash_Point(point,point,point + sisi, point,color)
	lineDDA_Dash_Point(point,point,point, point + sisi,color)
	lineDDA_Dash_Point(point + sisi,point,point + sisi, point + sisi,color)
	lineDDA_Dash_Point(point,point+sisi,point+sisi, point + sisi,color)
	pass

func rectangular(panjang, lebar, point, color):
	lineDDA_Dash(point.x,point.y,point.x + panjang, point.y,color)
	lineDDA_Dash(point.x,point.y,point.x, point.y + lebar,color)
	lineDDA_Dash(point.x + panjang,point.y,point.x + panjang, point.y + lebar,color)
	lineDDA_Dash(point.x, point.y + lebar,point.x + panjang, point.y + lebar,color)
	pass
	
func segitigaSiku(a: Vector2,b: Vector2, c: Vector2, color):
	lineDDA_Dash_Point(a.x,a.y,b.x,b.y,color)
	lineDDA_Dash_Point(c.x,c.y,b.x,b.y,color)
	lineDDA_Dash_Point(a.x,a.y,c.x,c.y,color)

#membuat bingkai
func createBingkai(margin, xb, yb,color):	
	lineDDA_Dash(0 + margin, 0 + margin, xb - margin, 0 + margin, color)
	lineDDA_Dash(xb - margin, 0 + margin, xb - margin, yb - margin, color)
	lineDDA_Dash(xb - margin, yb - margin, 0 + margin, yb - margin, color)
	lineDDA_Dash(0 + margin, yb - margin, 0 + margin, 0 + margin, color)

func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]),PoolVector2Array())

#lineDDA
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
	var k = 0
	while k <= steps:
		if(k < x_limit):
			x += xIncrement
			y += yIncrement
			put_pixel(round(x), round(y), color)
		k += 1

#lineDDA_Dash
func lineDDA_Dash(xa, ya, xb, yb, color):
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
	var k = 0
	while k <= steps:
		if(k < x_limit):
			x += xIncrement
			y += yIncrement
			if((k%17)!=0 ):
				put_pixel(round(x), round(y), color)
			else:
				x += xIncrement + xIncrement
				y += yIncrement + yIncrement
				k += 2
				
		k += 1

#lineDDA_DashPoint
func lineDDA_Dash_Point(xa, ya, xb, yb, color):
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
	var k = 0
	while k <= steps:
		if(k < x_limit):
			x += xIncrement
			y += yIncrement
			if((k%17)!=0 ):
				put_pixel(round(x), round(y), color)
			else:
				x += xIncrement * 2
				y += yIncrement * 2
				k += 1 * 2
				put_pixel(round(x), round(y), color)
				x += xIncrement
				y += yIncrement
				k += 1
				put_pixel(round(x), round(y), color)
				x += xIncrement + xIncrement
				y += yIncrement + yIncrement
				k += 1 * 2
			
		k += 1
#lineDDA Point_point
func lineDDA_Point_Point(xa, ya, xb, yb, color):
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
	var k = 0
	while k <= steps:
		if(k < x_limit):
			x += xIncrement
			y += yIncrement
			if((k%3)!=0 ):
				put_pixel(round(x), round(y), color)
			
		k += 1

func _on_Button_pressed():
	x_limit = 0
	mulai = true
	pass # Replace with function body.

