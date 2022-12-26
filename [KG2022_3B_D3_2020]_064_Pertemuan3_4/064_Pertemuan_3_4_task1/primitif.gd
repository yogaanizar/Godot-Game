extends "res://064_Pertemuan_3_4_task1/matrix.gd"


var width
var height
var center_x
var center_y

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _init():
	width = ProjectSettings.get("display/window/size/width")
	height = ProjectSettings.get("display/window/size/height")
	center_x = width/2
	center_y = height/2

func put_pixel(x, y, color):
	draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]), PoolVector2Array())

func put_pixel_2(x,y,color) :
	return draw_primitive(PoolVector2Array([Vector2(x, y)]), PoolColorArray([color]), PoolVector2Array())
	
func translate2 (tx : int, ty : int, matrix_temp) :
	var m = [[0,0,0], [0,0,0], [0,0,0]]
	
	matrix3x3SetIdentity(m)
	m[0][2] = tx
	m[1][2] = ty
	matrix3x3PreMultiply(m, matrix_temp)
	
func scale2(sx : float, sy : float, refpt : Vector2, matrix_temp) :
	var m = [[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	m[0][0] = sx
	m[0][2] = (1 - sx) * refpt.x
	m[1][1] = sy
	m[1][2] = (1 - sy) * refpt.y
	matrix3x3PreMultiply(m,matrix_temp)
	
func rotate2(a : float, refpt : Vector2, matrix_temp) :
	var m = [[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	a = deg2rad(a)
	m[0][0] = cos(a)
	m[0][1] = -sin(a)
	m[0][2] = refpt.x * (1 - cos(a)) + refpt.y * sin(a)
	m[1][0] = sin(a)
	m[1][1] = cos(a)
	m[1][2] = refpt.y * (1 - cos(a)) - refpt.x * sin(a)
	matrix3x3PreMultiply(m, matrix_temp)
	
func transformPoints2(npts : int, pts, matrix_temp) :
	var tmp
	var temp = []
	temp.append_array(pts)
	
	for k in range(npts) :
		tmp = matrix_temp[0][0] * pts[k].x + matrix_temp[0][1] * pts[k].y + matrix_temp[0][2]
		temp[k].y = matrix_temp[1][0] * pts[k].x + matrix_temp[1][1] * pts[k].y + matrix_temp[1][2]
		temp[k].x = tmp
	pts.resize(0)
	pts.append_array(temp)

func transformPoints2_segi_lima(npts, pts):
	var temp 
	
	for k in range (npts):
		temp = theMatrix[0][0] * pts[k].x + theMatrix[0][1] * pts[k].y + theMatrix[0][2]
		pts[k].y = theMatrix[1][0] * pts[k].x + theMatrix[1][1] * pts[k].y + theMatrix[1][2]
		pts[k].x = temp
		
	return pts

func rotate2_segi_lima(a: float, refpt: Vector2):
	var m=[[0,0,0],[0,0,0],[0,0,0]]
	
	matrix3x3SetIdentity(m)
	a = deg2rad(a)
	m[0][0] = cos(a)
	m[0][1] = -sin(a)
	m[0][2] = refpt.x * (1 - cos(a)) + refpt.y * sin(a)
	m[1][0] = sin(a)
	m[1][1] = cos(a)
	m[1][2] = refpt.y * (1 - cos(a)) - refpt.x * sin(a)
	matrix3x3PreMultiply(m, theMatrix)
