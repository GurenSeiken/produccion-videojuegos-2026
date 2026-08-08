extends Control
func _ready() -> void:
	$BtnBack.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/simulation/step1base.tscn"))
	$BtnNext.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/simulation/step3summary.tscn"))


signal ingredient_added
func _on_btn_add_ingredient_pressed() -> void:
	ingredient_added.emit()
