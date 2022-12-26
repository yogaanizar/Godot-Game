extends "res://064_Pertemuan_3_4_task3/kelopak.gd"

func _ready():
	pass
	
func _draw():
	kelopak4(Vector2(center_x,center_y))

func _buttonBack():
	get_tree().change_scene("res://064_Pertemuan_3_4_task1/MainMenu.tscn")

