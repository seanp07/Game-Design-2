extends Node3D

@onready var laps = 0
func _on_body_entered(body):
	if body.is_in_group("Player"):
		laps += 1
	if laps == 2:
		if "2" in get_tree().current_scene.name:
			OS.alert("You win!")
			get_tree().change_scene_to_file("res://rc_world_3.tscn")
		else:
			OS.alert("You win!")
			get_tree().change_scene_to_file("res://rc_world_2.tscn")
