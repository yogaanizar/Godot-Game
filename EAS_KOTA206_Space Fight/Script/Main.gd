extends Spatial

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept") and $UserInterface/Retry.visible:
		get_tree().reload_current_scene()

func _on_player_hit():
	$EnemySpawner/Timer.stop()
	$BosMonsterSpawner/Timer.stop()
	$UserInterface/Retry.show()
	$Meteor/Timer.stop()


func _on_Button_pressed():
	get_tree().change_scene("res://Scene/mainmenu.tscn")
