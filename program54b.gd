extends Control


func _on_calc_pressed():
	var var10 = int ($var1inp.text)
	var var20 = int ($var2inp.text)
	var var30 = int ($var3inp.text)
	var var40 = int ($var4inp.text)
	var sum = var10 + var20 + var30 + var40
	$sum.text = "Variable Sum: " + str(sum)
	var avg = var10 / 4.0 + var20 / 4.0 + var30 / 4.0 + var40 / 4.0
	$avg.text = "Variable Average: " + str(avg)

func _on_clear_pressed():
	$var1inp.text = ""
	$var2inp.text = ""
	$var3inp.text = ""
	$var4inp.text = ""
	$sum.text = ""
	$avg.text = ""

func _on_exit_pressed():
	get_tree().quit()
