extends "res://scripts/shape.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _draw():
	var x = get_viewport().size.x
	var y = get_viewport().size.y
	var xpos = 50
	var ypos = 50

	
	#lingkaran
	circleMidPoint(xpos+230, ypos+310, 7, Color.cyan)
	circleMidPoint(xpos+250, ypos+280, 7, Color.cyan)
	circleMidPoint(xpos+230, ypos+250, 7, Color.cyan)
	circleMidPoint(xpos+250, ypos+220, 7, Color.cyan)
	circleMidPoint(xpos+470, ypos+310, 7, Color.cyan)
	circleMidPoint(xpos+490, ypos+280, 7, Color.cyan)
	circleMidPoint(xpos+470, ypos+250, 7, Color.cyan)
	circleMidPoint(xpos+490, ypos+220, 7, Color.cyan)
	

	#kura-kura
	circleMidPoint(xpos+360, ypos+350, 70, Color.greenyellow)
	ellipseMidPoint(Vector2(xpos+330, ypos+270), 40/2, 40, Color.greenyellow, 1)
	ellipseMidPoint(Vector2(xpos+420, ypos+270), 40/2, 40, Color.greenyellow, 1)
	ellipseMidPoint(Vector2(xpos+330, ypos+430), 40, 20, Color.greenyellow, 1)
	ellipseMidPoint(Vector2(xpos+420, ypos+430), 40, 20, Color.greenyellow, 1)
	circleMidPoint(xpos+260, ypos+350, 35, Color.greenyellow)
	
	#kura-kura 2
	circleMidPoint(xpos+600, ypos+350, 70, Color.green)
	ellipseMidPoint(Vector2(xpos+570, ypos+270), 40/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+660, ypos+270), 40/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+570, ypos+430), 40, 20, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+660, ypos+430), 40, 20, Color.green, 1)
	circleMidPoint(xpos+500, ypos+350, 35, Color.green)
	
	
	#tanaman koral
	ellipseMidPoint(Vector2(xpos+140, ypos+270), 20/2, 40, Color.palevioletred, 1)
	ellipseMidPoint(Vector2(xpos+110, ypos+220), 30/2, 70, Color.palevioletred, 0)
	ellipseMidPoint(Vector2(xpos+80, ypos+270), 120/3, 10, Color.palevioletred, 1)
	
	#tanaman koral 2
	ellipseMidPoint(Vector2(xpos+55, ypos+290), 20/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(xpos+30, ypos+250), 30/2, 70, Color.green, 0)
	ellipseMidPoint(Vector2(55, ypos+290), 120/3, 10, Color.green, 1)
	
	#tanaman koral 3
	ellipseMidPoint(Vector2(980, ypos+355), 20/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(980, ypos+270), 20/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(980, ypos+185), 20/2, 40, Color.green, 1)
	ellipseMidPoint(Vector2(950, ypos+250), 30/2, 130, Color.green, 0)
	ellipseMidPoint(Vector2(920, ypos+355), 120/3, 10, Color.green, 1)
	ellipseMidPoint(Vector2(920, ypos+270), 120/3, 10, Color.green, 1)
	ellipseMidPoint(Vector2(920, ypos+185), 120/3, 10, Color.green, 1)
	circleMidPoint(xpos+955, ypos+420, 50, Color.red)
	circleMidPoint(xpos+865, ypos+430, 40, Color.red)
	circleMidPoint(xpos+795, ypos+440, 30, Color.red)
	circleMidPoint(xpos+745, ypos+450, 20, Color.red)
	circleMidPoint(xpos+908, ypos+459, 11, Color.red)
	circleMidPoint(xpos+827, ypos+461, 9, Color.red)
	circleMidPoint(xpos+767, ypos+464, 6, Color.red)
	
	#tanaman koral 4
	ellipseMidPoint(Vector2(850, ypos+389), 20/3, 30, Color.green, 1)
	ellipseMidPoint(Vector2(850, ypos+359), 20/3, 30, Color.green, 1)
	ellipseMidPoint(Vector2(850, ypos+329), 20/3, 30, Color.green, 1)
	ellipseMidPoint(Vector2(850, ypos+299), 20/3, 30, Color.green, 1)
	ellipseMidPoint(Vector2(850, ypos+269), 20/3, 30, Color.green, 1)
	ellipseMidPoint(Vector2(830, ypos+310), 30/3, 100, Color.green, 0)
	ellipseMidPoint(Vector2(810, ypos+389), 120/4, 6, Color.green, 1)
	ellipseMidPoint(Vector2(810, ypos+359), 120/4, 6, Color.green, 1)
	ellipseMidPoint(Vector2(810, ypos+329), 120/4, 6, Color.green, 1)
	ellipseMidPoint(Vector2(810, ypos+299), 120/4, 6, Color.green, 1)
	ellipseMidPoint(Vector2(810, ypos+269), 120/4, 6, Color.green, 1)
	
	#kotak treasure chest
	trapesium_siku(Vector2(x/2-450, ypos+450), -90, 150, 150, Color.yellow, 1)
	trapesium_siku(Vector2(x/2-450, 440), -50, 150, 150, Color.yellow, 1)
	segi_enam(Vector2(138, 425), 25, Color.yellow, 1)
	
	#ikan
	layang_layang(Vector2(xpos+300, ypos+100), 100, 60, 30, Color.aqua, 1)
	layang_layang(Vector2(xpos+230, ypos+115), 50, 30, 15, Color.aqua, 1)
	circleMidPoint(xpos+308, ypos+118, 5, Color.aqua)
	
	


func _on_goBack_pressed():
	get_tree().change_scene("res://Scene/MainMenu.tscn")
