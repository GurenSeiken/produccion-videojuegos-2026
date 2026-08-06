extends Control
func _ready() -> void:
	$BtnMenu.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/menu/menuPanel.tscn"))
