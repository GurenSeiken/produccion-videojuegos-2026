extends Control
func _ready() -> void:
	$BtnNext.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/simulation/step2ingredients.tscn"))
	
