extends Control

func _on_calc_pressed():
	var radius = float ($radius.text)
	var pi = 3.14159
	var area = pi * radius**2
	var circ = 2 * pi * radius
	$alabel.text = "Area: " + str(area)
	$clabel.text = "Circumfrence: " + str(circ)

func _on_clear_pressed():
	$radius.text = ""
	$alabel.text = "Area: "
	$clabel.text = "Circumfrence: "


func _on_exit_pressed():
	get_tree().quit()
