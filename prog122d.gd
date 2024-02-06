extends Control

func _on_calc_pressed():
	$ItemList.add_item ("x     y")
	for num in range (-12, 16):
		var num2 = num**6
		var num3 = num*3**5 
		var num4 = num*93**4
		var num5 = num*87**3
		var num6 = num*1596**2
		var num7 = num*1380
		var wtf = num2 - num3 - num4 + num5 + num6 - num7 - 2800
		var line = str(num) + "     " + str(wtf)
		$ItemList.add_item (line)
		
		

func _on_clear_pressed():
	$ItemList.clear()



func _on_exit_pressed():
	get_tree().quit()
