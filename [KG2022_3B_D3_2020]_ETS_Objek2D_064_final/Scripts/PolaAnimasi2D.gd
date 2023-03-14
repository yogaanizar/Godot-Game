extends "res://scripts/shape.gd"

var rotasi = 0
var skala = 1
var skala2 = 1
var translate = 1
var translateIkan = 1
var translateIkan1 = 1
var transY = true
var trans = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _draw():
	var x = get_viewport().size.x
	var y = get_viewport().size.y
	var xpos = 50
	var ypos = 50
	
	
	#ikan dan gelembung2
	layang_layang(Vector2(xpos+300-translateIkan, ypos+300+translateIkan1), 100, 60, 30, Color.aqua, 1)
	layang_layang(Vector2(xpos+230-translateIkan, ypos+315+translateIkan1), 50, 30, 15, Color.aqua, 1)
	circleMidPoint(xpos+308-translateIkan, ypos+318+translateIkan1, 5, Color.aqua)
	
	

	#kura-kura 2
	circleMidPoint(xpos+600+translate, ypos+350, 70, Color.green)
	ellipseMidPoint(Vector2(xpos+570+translate, ypos+270), 40/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+660+translate, ypos+270), 40/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+570+translate, ypos+430), 40, 20, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+660+translate, ypos+430), 40, 20, Color.green, 1)
	circleMidPoint(xpos+500+translate, ypos+350, 35, Color.green)
	circleMidPoint(xpos+470+translate, ypos+310, 7+skala, Color.cyan)
	circleMidPoint(xpos+490+translate, ypos+280, 7+skala, Color.cyan)
	circleMidPoint(xpos+470+translate, ypos+250, 7+skala, Color.cyan)
	circleMidPoint(xpos+490+translate, ypos+220, 7+skala, Color.cyan)
	
	#tanaman koral
	ellipseMidPoint(Vector2(xpos+140, ypos+270), 20/2+skala, 40+skala, Color.palevioletred, 1)
	ellipseMidPoint(Vector2(xpos+110, ypos+220), 30/2+skala, 70+skala, Color.palevioletred, 0)
	ellipseMidPoint(Vector2(xpos+80, ypos+270), 120/3+skala, 10+skala, Color.palevioletred, 1)
	
	#tanaman koral 2
	ellipseMidPoint(Vector2(xpos+55, ypos+290), 20/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+30, ypos+250), 30/2, 70, Color.green, 0)
	ellipseMidPoint(Vector2(55, ypos+290), 120/3, 10, Color.green, 1)
	
	#kotak treasure chest
	trapesium_siku(Vector2(x/2-450, ypos+450), -90, 150, 150, Color.yellow, 1)
	trapesium_siku(Vector2(x/2-450, 440), -50, 150, 150, Color.yellow, 1)
	segi_enam(Vector2(138, 425), 25, Color.yellow, 1)
	
	
	#atas laut
	segi_enam(Vector2(0, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(28, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(56, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(84, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(112, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(140, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(168, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(196, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(224, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(252, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(280, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(308, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(336, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(364, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(392, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(420, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(448, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(476, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(504, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(532, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(560, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(588, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(616, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(644, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(672, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(700, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(728, 150), 25, Color.aqua, 1)		
	segi_enam(Vector2(756, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(784, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(812, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(840, 150), 25, Color.aqua, 1)
	segi_enam(Vector2(868, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(896, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(924, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(952, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(980, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(1008, 150), 25, Color.aqua, 1)	
	segi_enam(Vector2(1036, 150), 25, Color.aqua, 1)	
	
	#poison
	segi_enam(Vector2(500, 425), 7, Color.purple, 1)
	segi_enam(Vector2(480, 425), 7, Color.purple, 1)
	segi_enam(Vector2(460, 425), 7, Color.purple, 1)
	segi_enam(Vector2(440, 425), 7, Color.purple, 1)
	segi_enam(Vector2(440, 425), 7, Color.purple, 1)
	
	
func _process(delta):
	rotasi += 2
	
	if(trans == true):
		if(translateIkan==-50):
			trans = false
		else:
			
			translateIkan -= 1
			
	else:
		if(translateIkan == 0):
			trans = true
		else:
			
			translateIkan += 1
			
	if(transY == true):
		if(translateIkan1==-20):
			transY = false
		else:
			translateIkan1 -= 1
	else:
		if(translateIkan1 == 0):
			transY = true
		else:
			translateIkan1 += 1

	update()
	
func _on_goBack_pressed():
	get_tree().change_scene("res://Scene/MainMenu.tscn")
	
