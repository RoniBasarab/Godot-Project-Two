extends Node2D

@onready var animation_player = $AnimationPlayer


func play_idle():
	animation_player.play("idle")
	
	
func play_walk():
	animation_player.play("walk")
	
func play_attack():
	await animation_player.play("attack")
	animation_player.play("idle")
