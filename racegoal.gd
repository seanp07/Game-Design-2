extends Node3D

@onready var laps = 0
func _on_body_entered(body):
	if body.is_in_group("Player"):
		laps += 1
	if laps == 2:
		OS.alert("You win!")
