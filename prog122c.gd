extends Control

func _on_calc_pressed():
	$ItemList.add_item ("")
	for num in range (2, 12, 2):
		var numsquared = num**2
		var num2 = num + 1
		var numsdup = num * 2
		var line = str(num) + "     " + str(num2) + "     " + str(numsdup) + "     " + str(numsquared)
		$ItemList.add_item(line)

func _on_clear_pressed():
	$ItemList.clear()

func _on_exit_pressed():
	get_tree().quit()
