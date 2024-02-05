extends Control



func _on_calc_pressed():
	$ItemList.add_item ("Number")
	#range(stop)
	#range(start, stop)
	#range (start, stop, step)
	for num in range(2, 36+1, 2):
		var line = str(num)
		$ItemList.add_item(line)
	

func _on_clear_pressed():
	$ItemList.clear()


func _on_exit_pressed():
	get_tree().quit()
