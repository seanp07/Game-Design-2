extends Control



func _on_calc_pressed():
	$ItemList.add_item ("Hours     Pay")
	for num in range (1, 41):
		var pay = num * 4
		var line = str(num) + "     " + str(pay)
		$ItemList.add_item(line)



func _on_clear_pressed():
	$ItemList.clear()


func _on_exit_pressed():
	get_tree().quit() 
