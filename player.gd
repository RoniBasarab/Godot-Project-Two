extends CharacterBody2D


func _physics_process(delta):
	var direction = Input.get_vector("right", "left", "down", "up")
	velocity = direction * 100
	move_and_slide()
	
	if velocity.length() > 0:
		%KingHuman.play_walk()
	else:
		%KingHuman.play_idle()
		
	if InputEvent.is_action_pressed("attack"):
		%KingHuman.play_attack()
