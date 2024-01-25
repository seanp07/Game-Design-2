extends Control


func _on_show_pressed():
	$Label.text = "French Club"
func _on_clear_pressed():
	$Label.text = ""
func _on_exit_pressed():
	get_tree().quit()
