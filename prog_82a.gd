extends Control

func _on_calc_pressed():
	var speedlimit = int($txtlimit.text)
	var carspeed = int($txtspeed.text)
	var milesover = carspeed - speedlimit
	var fine = 20.0 + (milesover * 5.0)
	$lblout.text = "Fine: $ %.2f" % fine

func _on_clear_pressed():
	$txtlimit.text = ""
	$txtspeed.text = ""
	$lblout.text = ""



func _on_exit_pressed():
	get_tree().quit()
