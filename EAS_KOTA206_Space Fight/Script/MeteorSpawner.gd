extends Spatial

onready var main = get_tree().current_scene
var Enemy = load("res://Scene/asteroid.tscn")

func spawn():
	var enemy = Enemy.instance()
	main.add_child(enemy)
	enemy.transform.origin = transform.origin + Vector3(rand_range(-10,10), rand_range(-5,5), 0)

func _on_Timer_timeout():
	spawn()
