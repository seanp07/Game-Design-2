extends Control

func _on_calc_pressed():
	var length = int($lsolv.text)
	var width = int($wsolv.text) 
	var area = length * width
	var peri = 2 * length + 2 * width
	$area.text = "Area: " + str(area)
	$peri.text = "Perimeter: " + str(peri)
	#+ - * / ** pow
	# string - string (text), int - integer (whole number)
	#float - floating point (num w/ decimal)func _on_clear_pressed():
	


func _on_clear_pressed():
	$lsolv.text = ""
	$wsolv.text = ""
	$area.text = ""
	$peri.text = ""
	


func _on_exit_pressed():
	get_tree().quit()
