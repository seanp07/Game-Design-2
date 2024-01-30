extends Control



func _on_calc_pressed():
	var num1 = int($num1.text)
	var num2 = int($num2.text)
	var Sum = num1 + num2
	var Dif = num1 - num2
	var prod = num1 * num2
	var Avg = num1 / 2.0 + num2 / 2.0
	var Abs = abs(Dif)
	var Max = 0
	var Min = 0
	if num1 > num2:
		Max = num1
	else: 
		Max = num2
		
	if Max == num1:
		Min = num2
	
	else:
		Min = num1
		
	$Label.text = "Sum: " + str(Sum) + \
				"\nDifference: " + str(Dif) + \
				"\nAbs. Distance: " + str(Abs) + \
				"\n Average: " + str(Avg) + \
				"\n Product: " + str(prod) + \
				"\nMax: " + str(Max) + \
				"\nMin: " + str(Min) 


func _on_clear_pressed():
	$Label.text = ""
	$num1.text = ""
	$num2.text = ""



func _on_exit_pressed():
	get_tree().quit()
