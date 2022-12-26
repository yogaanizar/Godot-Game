extends "res://064_Pertemuan_3_4_task2/shape.gd"

func _ready():
	pass

func _process(delta):
	pass
	
func _draw():
	trapesium_siku(Vector2(75,110),100,100,200,Color("#FF44BF"))
	trapesium_siku(Vector2(305,110),100,100,200,Color("#FF44BF"),true)
	
	jajar_genjang(Vector2(75,240),40,150,75,Color("#00FFD1"))
	jajar_genjang(Vector2(255,240),40,150,75,Color("#00FFD1"),true)
	
	layang_layang(Vector2(75,400),120,50,120,Color.aquamarine)
	layang_layang(Vector2(225,400),120,50,120,Color.aquamarine,true)
	
	ketupat(Vector2(550,165),110,140,Color.springgreen)
	ketupat(Vector2(680,165),110,140,Color.springgreen,true)
	
	segi_lima(Vector2(610,325),60,Color.yellow)
	segi_lima(Vector2(740,325),60, Color.yellow, true)
	
	segi_enam(Vector2(610,460),60,Color.greenyellow)
	segi_enam(Vector2(740,460),60, Color.greenyellow, true)
	
	
	
func _buttonBack():
	get_tree().change_scene("res://064_Pertemuan_3_4_task1/MainMenu.tscn")
