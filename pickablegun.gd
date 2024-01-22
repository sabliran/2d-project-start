extends Area2D

#when player touch pickablegun 
# pickablegun qeuefree
# secondGun visible = true



func _on_body_entered(body):
	if body.name == "Player":
		print("touchte")
		queue_free()
		
