extends Control



func _on_calc_pressed():
	$ItemList.add_item ("Number     Square     Square Root     Cubed     Fourth Root")
	for num in range (1, 20):
		var numsquared = num**2
		var numsqrt = sqrt(num)
		var cubed = num**3
		var rootfour = sqrt(numsqrt)
		var line = str(num) + "     " + str(numsquared) + "     " + str(numsqrt) + "     " + str(cubed) + "     " + str(rootfour) 
		$ItemList.add_item(line)

func _on_clear_pressed():
	$ItemList.clear()

func _on_exit_pressed():
	get_tree().quit()
