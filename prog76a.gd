extends Control




func _on_calc_pressed():
	var num = int($num.text)
	var res = num * 9 * 12345679
	$Label2.text = "The Result: " + str(res)


func _on_clear_pressed():
	$num.text = ""
	$Label2.text = ""



func _on_exit_pressed():
	get_tree().quit()
