extends Node2D



func spawn_mob():
	var  new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)
	
func spawn_boss():
	var new_boss = preload("res://boss.tscn").instantiate()
	new_boss.global_position = %"boss area".global_position
	add_child(new_boss)
	


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_depleted():
	%GameOver.visible = true
	get_tree().paused = true
	


func _on_boss_timer_timeout():
	spawn_boss()
	%BossArrival.visible = true
	$CanvasLayer/BossArrival/LabelTimer.start()
	



func _on_label_timer_timeout():
	%BossArrival.hide()
	
