extends Node

var current_price: int = 0
var current_state: String = "Menu"

func add_price(amount: int) -> void:
	current_price += amount
	print("Precio total actual: ", current_price)
