extends Control




func _on_calc_pressed():
	var num = int($num.text)
	var res = num * 9 * 12345679
	$Label2.text = "The Result: " + str(res)
