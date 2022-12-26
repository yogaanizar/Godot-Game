extends "res://064_Pertemuan_3_4_task2/shape.gd"

func _ready():
	pass 

func ovelaping(center: Vector2) :
	#print(ident)
	var temp = ellipseMidpoint_2(512,300,100,50, Color.green)
	var ident = [[0,0,0],[0,0,0],[0,0,0]]
	var point 
	
	matrix3x3SetIdentity(ident)
	translate2(100,0,ident)
	rotate2(45, Vector2(512,300), ident)
	transformPoints2(temp.size(), temp, ident)
	
	var j = 1
	while(j <= 20) :
		matrix3x3SetIdentity(ident)
		rotate2(20, Vector2(512,300), ident)
		transformPoints2(temp.size(), temp, ident)
	
		var i = 0
		while(i < temp.size()) :
			put_pixel(temp[i].x,temp[i].y,Color.violet)
			i += 1
		
		j+=1

func kelopak4(center: Vector2) :
	#print(ident)
	var temp = ellipseMidpoint_2(512,300,100,50, Color.cyan)
	var ident = [[0,0,0],[0,0,0],[0,0,0]]
	var point 
	
	matrix3x3SetIdentity(ident)
	translate2(100,0,ident)
	rotate2(45, Vector2(512,300), ident)
	transformPoints2(temp.size(), temp, ident)
	
	var j = 1
	while(j <= 4) :
		matrix3x3SetIdentity(ident)
		rotate2(90, Vector2(512,300), ident)
		transformPoints2(temp.size(), temp, ident)
	
		var i = 0
		while(i < temp.size()) :
			put_pixel(temp[i].x,temp[i].y,Color.white)
			i += 1
		
		j+=1	

func kelopak8(center: Vector2) :
	#print(ident)
	var temp = ellipseMidpoint_2(512,300,100,50, Color.yellow)
	var ident = [[0,0,0],[0,0,0],[0,0,0]]
	var point 
	
	matrix3x3SetIdentity(ident)
	translate2(100,0,ident)
	rotate2(45, Vector2(512,300), ident)
	transformPoints2(temp.size(), temp, ident)
	
	var j = 1
	while(j <= 8) :
		matrix3x3SetIdentity(ident)
		rotate2(45, Vector2(512,300), ident)
		transformPoints2(temp.size(), temp, ident)
	
		var i = 0
		while(i < temp.size()) :
			put_pixel(temp[i].x,temp[i].y,Color.pink)
			i += 1
		
		j+=1
