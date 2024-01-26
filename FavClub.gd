extends Control


func _on_show_pressed():
	$Label.text = "Sean Palmer - Favorite Game: Dishonored - I will always try my best."
func _on_clear_pressed():
	$Label.text = ""
func _on_exit_pressed():
	get_tree().quit()
