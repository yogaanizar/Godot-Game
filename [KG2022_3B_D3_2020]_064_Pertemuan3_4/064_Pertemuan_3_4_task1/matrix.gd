extends Node2D

var theMatrix = [[0,0,0],[0,0,0],[0,0,0]]

func _ready():
	pass 
	
func _init():
	pass
	
func matrix3x3SetIdentity(m) :
	for i in range(3) :
		for j in range(3) :
			if i == j :
				m[i][j] = 1
			else :
				m[i][j] = 0		
	
# Multiplies matrix a times b, putting result in b
func matrix3x3PreMultiply(a,b) :
	var tmp = [[0,0,0],[0,0,0],[0,0,0]]
	
	for r in range(3) :
		for c in range(3) :
			tmp[r][c] = a[r][0] * b[0][c] + a[r][1] * b[1][c] + a[r][2] * b[2][c]
	
	for r in range(3) :
		for c in range(3) :
			b[r][c] = tmp[r][c]

# matrix a + matrix b
func matrix3x3Add(a,b) :
	for r in range(3) :
		for c in range(3) :
			a[r][c] += b[r][c]

# matrix a - matrix b
func matrix3x3Subtract(a,b) :
	for r in range(3) :
		for c in range(3) :
			a[r][c] -= b[r][c]
