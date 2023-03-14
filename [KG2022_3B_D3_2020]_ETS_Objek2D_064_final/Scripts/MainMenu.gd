extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#func _on_titikTengah_pressed():
#	get_tree().change_scene("res://Scene/page1.tscn")

func _buttonAbout():
	get_tree().change_scene("res://Scene/About.tscn")


func buttonHowTo():
	get_tree().change_scene("res://Scene/CaraPenggunaan.tscn")


func bentukDasar():
	get_tree().change_scene("res://Scene/bentukDasar.tscn")


func _on_PolaAnimasi2D_pressed():
	get_tree().change_scene("res://Scene/PolaAnimasi2D.tscn")
