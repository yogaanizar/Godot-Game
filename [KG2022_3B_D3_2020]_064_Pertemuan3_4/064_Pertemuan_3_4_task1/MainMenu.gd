extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#func _on_titikTengah_pressed():
#	get_tree().change_scene("res://Scene/page1.tscn")

func _buttonAbout():
	get_tree().change_scene("res://064_Pertemuan_3_4_task1/About.tscn")

func _buttonPage1():
	get_tree().change_scene("res://064_Pertemuan_3_4_task2/page1.tscn")
	
func _buttonPage2():
	get_tree().change_scene("res://064_Pertemuan_3_4_task2/page2.tscn")

func _buttonPage3():
	get_tree().change_scene("res://064_Pertemuan_3_4_task3/page3.tscn")

func _buttonPage4():
	get_tree().change_scene("res://064_Pertemuan_3_4_task4/page4.tscn")
