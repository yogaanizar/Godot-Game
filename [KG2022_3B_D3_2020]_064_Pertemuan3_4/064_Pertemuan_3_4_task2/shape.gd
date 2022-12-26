extends "res://Scripts/line.gd"


func _ready():
	pass 

func persegi(titik_awal: Vector2, panjang_sisi: int, warna_garis: Color, dashed: bool = false):
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x + panjang_sisi, titik_awal.y, warna_garis, dashed) # atas
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x, titik_awal.y + panjang_sisi, warna_garis, dashed) # kiri
	line_dda(titik_awal.x, titik_awal.y + panjang_sisi, titik_awal.x + panjang_sisi, titik_awal.y + panjang_sisi, warna_garis, dashed) # bawah
	line_dda(titik_awal.x + panjang_sisi, titik_awal.y, titik_awal.x + panjang_sisi, titik_awal.y + panjang_sisi, warna_garis, dashed) # kanan

func persegi_panjang(titik_awal: Vector2, panjang: int, lebar: int, warna_garis: Color, dashed: bool = false):
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x + panjang, titik_awal.y, warna_garis, dashed) # atas
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x, titik_awal.y + lebar, warna_garis, dashed) #kiri
	line_dda(titik_awal.x, titik_awal.y + lebar, titik_awal.x + panjang, titik_awal.y + lebar, warna_garis, dashed) #bawah
	line_dda(titik_awal.x + panjang, titik_awal.y, titik_awal.x + panjang, titik_awal.y + lebar, warna_garis, dashed) #kanan
	
func segitiga_siku(titik_awal: Vector2, sisi_depan: int, sisi_samping: int, sisi_miring: int, warna_garis: Color, dashed: bool = false):
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x, titik_awal.y + sisi_depan, warna_garis, dashed) # sisi depan
	line_dda(titik_awal.x, titik_awal.y + sisi_depan, titik_awal.x + sisi_samping, titik_awal.y + sisi_depan, warna_garis, dashed) # sisi samping
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x + sisi_samping, titik_awal.y + sisi_miring, warna_garis, dashed) # sisi miring


func trapesium_siku(titik_awal: Vector2, a, b, d, warna_garis: Color, dashed: bool = false) :
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x, titik_awal.y + a, warna_garis, dashed) # a
	line_dda(titik_awal.x, titik_awal.y, titik_awal.x + b, titik_awal.y, warna_garis, dashed) #b
	line_dda(titik_awal.x + b, titik_awal.y, titik_awal.x + d, titik_awal.y + a, warna_garis, dashed) # c
	line_dda(titik_awal.x, titik_awal.y + a, titik_awal.x + d, titik_awal.y + a, warna_garis, dashed) # d
	
func ketupat(center: Vector2, panjang: int, lebar: int, warna_garis: Color, dashed: bool = false) :
	line_dda(center.x, center.y, center.x + panjang / 2, center.y - lebar / 2, warna_garis, dashed) #topleft
	line_dda(center.x + panjang / 2, center.y -lebar / 2, center.x + panjang, center.y, warna_garis, dashed) #topright
	line_dda(center.x, center.y, center.x + panjang / 2, center.y + lebar / 2, warna_garis, dashed) #bottomleft
	line_dda(center.x + panjang, center.y, center.x + panjang / 2, center.y + lebar / 2, warna_garis, dashed) #bottomright

func layang_layang(center: Vector2, panjang: int, lebar_atas: int, lebar_bawah, warna_garis: Color, dashed: bool = false) :
	line_dda(center.x,center.y, center.x + panjang / 2, center.y - lebar_atas, warna_garis, dashed) # topleft
	line_dda(center.x + panjang / 2, center.y - lebar_atas, center.x + panjang, center.y, warna_garis, dashed) #topright
	line_dda(center.x, center.y, center.x + panjang / 2, center.y + lebar_bawah, warna_garis, dashed) #bottomleft
	line_dda(center.x + panjang, center.y, center.x + panjang / 2, center.y + lebar_bawah, warna_garis, dashed) #bottom right

func jajar_genjang(titik_awal: Vector2, geser: int, panjang: int, lebar: int, warna_garis: Color, dashed: bool = false) :
	line_dda(titik_awal.x + geser, titik_awal.y, titik_awal.x + panjang + geser, titik_awal.y, warna_garis, dashed) # top
	line_dda(titik_awal.x + geser, titik_awal.y, titik_awal.x, titik_awal.y + lebar, warna_garis, dashed) # left
	line_dda(titik_awal.x, titik_awal.y + lebar, titik_awal.x + panjang, titik_awal.y + lebar, warna_garis, dashed) #bottom
	line_dda(titik_awal.x + geser + panjang, titik_awal.y, titik_awal.x + panjang, titik_awal.y + lebar, warna_garis,dashed) # right
	
#draw_line(Vector2(768,150),Vector2(768,450),Color.white,3.0,true)
#line_dda(229,239,796,239,Color("#FF0000"),true)
#line_dda(229,278,796,278,Color("#FF44BF"))
#line_dda(229,321,796,321,Color("#FFDA38"),true)
#line_dda(229,360,796,360,Color("#00FFD1"))

func segi_lima(Center: Vector2, length, color: Color, dashed: bool = false):
	var point1 = PoolVector2Array()
	var point2 = PoolVector2Array()
	point1.insert(0, Vector2(Center.x, Center.y - length))
	
	for i in range(5):
		point2.insert(0, point1[i-1])
		matrix3x3SetIdentity(theMatrix)
		rotate2_segi_lima(72, Center)
		point2 = transformPoints2_segi_lima(1, point2)
		point1.insert(i, point2[0])
	
	for i in range(5) :
		if(i == 4) :
			line_dda(point1[4].x, point1[4].y, point1[0].x, point1[0].y, color, dashed)
		else :
			line_dda(point1[i].x, point1[i].y, point1[i+1].x, point1[i+1].y, color, dashed)

func segi_enam(Center: Vector2, length, color: Color, dashed: bool = false):
	var point1 = PoolVector2Array()
	var point2 = PoolVector2Array()
	point1.insert(0, Vector2(Center.x, Center.y - length))
	
	for i in range(6):
		point2.insert(0, point1[i-1])
		matrix3x3SetIdentity(theMatrix)
		rotate2_segi_lima(60, Center)
		point2 = transformPoints2_segi_lima(1, point2)
		point1.insert(i, point2[0])
	
	for i in range(6) :
		if(i == 5) :
			line_dda(point1[5].x, point1[5].y, point1[0].x, point1[0].y, color, dashed)
		else :
			line_dda(point1[i].x, point1[i].y, point1[i+1].x, point1[i+1].y, color, dashed)
			
func circleMidpoint(xCenter: int, yCenter: int, radius: int, color: Color) :
	var x = 0
	var y = radius
	var p = 1 - radius
	
	# Plot first set of points
	circlePlotPoints(xCenter, yCenter, x, y,color)
	while(x < y) :
		x += 1
		if(p < 0):
			p += 2 * x + 1
		else :
			y -= 1
			p += 2 * (x-y) + 1
		circlePlotPoints(xCenter, yCenter, x, y, color)

func circlePlotPoints(xCenter: int, yCenter: int, x: int, y: int, color: Color) :
	put_pixel(xCenter + x, yCenter + y, color)
	put_pixel(xCenter - x, yCenter + y, color)
	put_pixel(xCenter + x, yCenter - y, color)
	put_pixel(xCenter - x, yCenter - y, color)
	put_pixel(xCenter + y, yCenter + x, color)
	put_pixel(xCenter - y, yCenter + x, color)
	put_pixel(xCenter + y, yCenter - x, color)
	put_pixel(xCenter - y, yCenter - x, color)

func ellipseMidpoint(xCenter: int, yCenter: int, Rx: int, Ry: int, color: Color) :
	var Rx2 = Rx*Rx
	var Ry2 = Ry*Ry
	var twoRx2 = 2*Rx2
	var twoRy2 = 2 *Ry2
	var p = 0
	var x = 0
	var y = Ry
	var px = 0
	var py = twoRx2 * y
	
	# Plot the first set of points
	ellipsePlotPoints(xCenter,yCenter,x,y, color)
	
	# Region 1
	p = round(Ry2 - (Rx2 * Ry) + (0.25 * Rx2))
	while(px < py) :
		x += 1
		px += twoRy2
		if(p < 0):
			p += Ry2 + px
		else :
			y -= 1
			py -= twoRx2
			p += Ry2 + px - py
		ellipsePlotPoints(xCenter,yCenter,x,y, color)

	# Region 2
	p = round(Ry2 * (x + 0.5) * (x + 0.5) + Rx2 * (y-1) * (y-1) - Rx2*Ry2)
	while(y > 0):
		y -= 1
		py -= twoRx2
		if(p > 0) :
			p+= Rx2 - py
		else :
			x += 1
			px += twoRy2
			p += Rx2 -py + px
		ellipsePlotPoints(xCenter,yCenter,x,y, color)
		
	
func ellipsePlotPoints(xCenter: int, yCenter: int, x :int, y: int, color: Color) :
	put_pixel(xCenter + x, yCenter + y,color)
	put_pixel(xCenter - x, yCenter + y,color)
	put_pixel(xCenter + x, yCenter - y,color)
	put_pixel(xCenter - x, yCenter - y,color)

func ellipseMidpoint_2(xCenter: int, yCenter: int, Rx: int, Ry: int, color: Color) :
	var temp = []
	var Rx2 = Rx*Rx
	var Ry2 = Ry*Ry
	var twoRx2 = 2*Rx2
	var twoRy2 = 2 *Ry2
	var p = 0
	var x = 0
	var y = Ry
	var px = 0
	var py = twoRx2 * y
	
	# Plot the first set of points
	temp.append_array(ellipsePlotPoints_2(xCenter,yCenter,x,y, color))
	
	# Region 1
	p = round(Ry2 - (Rx2 * Ry) + (0.25 * Rx2))
	while(px < py) :
		x += 1
		px += twoRy2
		if(p < 0):
			p += Ry2 + px
		else :
			y -= 1
			py -= twoRx2
			p += Ry2 + px - py
		temp.append_array(ellipsePlotPoints_2(xCenter,yCenter,x,y, color))

	# Region 2
	p = round(Ry2 * (x + 0.5) * (x + 0.5) + Rx2 * (y-1) * (y-1) - Rx2*Ry2)
	while(y > 0):
		y -= 1
		py -= twoRx2
		if(p > 0) :
			p+= Rx2 - py
		else :
			x += 1
			px += twoRy2
			p += Rx2 -py + px
		temp.append_array(ellipsePlotPoints_2(xCenter,yCenter,x,y, color))
	return temp
		
func ellipsePlotPoints_2(xCenter: int, yCenter: int, x :int, y: int, color: Color) :
	var temp = []
	temp.append(Vector2(xCenter + x, yCenter + y))
	temp.append(Vector2(xCenter - x, yCenter + y))
	temp.append(Vector2(xCenter + x, yCenter - y))
	temp.append(Vector2(xCenter - x, yCenter - y))
	return temp
