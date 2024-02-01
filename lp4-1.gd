extends Control

func _on_calc_pressed():
	var copies = int($copies.text)
	var price = 0.0
	var cost = 0.0
	if copies > 0 and copies <=99:
		price = 0.30
	elif copies > 99 and copies <= 499:
		price = 0.38
	elif copies > 499 and copies <= 749:
		price = 0.27
	elif copies >749 and copies <= 1000:
		price = 0.26
	elif copies >1000:
		price = 0.25
	else:
		$lblout.text = "Invalid # of copies entered"
		return
	cost = copies * price
	$lblout.text = "Price per copy: $" + str(price) + \
				"\nTotal cost: $%.2f" % cost

func _on_clear_pressed():
	$lblout.text = ""
	$copies.text = ""

func _on_exit_pressed():
	get_tree().quit()
