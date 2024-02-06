extends Control




func _on_calc_pressed():
	$ItemList.add_item ("Number     Cubed     Cube Root")
	for num in range (-25, 25):
		var cubed = num**3
		var root3 = sqrt(cubed)
		var line = str(num) + "     " + str(cubed) + "     " + str(root3)
		$ItemList.add_item(line)

func _on_clear_pressed():
	$ItemList.clear()



func _on_exit_pressed():
	get_tree().quit()
