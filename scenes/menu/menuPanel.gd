extends Control

func _ready() -> void:
	$VBoxContainer/BtnSimulation.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/simulation/step1base.tscn"))
	$VBoxContainer/BtnConfig.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/config/configPanel.tscn"))
	$VBoxContainer/BtnCredits.pressed.connect(func(): EventBus.navigation_requested.emit("res://scenes/credits/creditsPanel.tscn"))
	$VBoxContainer/BtnExit.pressed.connect(func(): get_tree().quit())


func _on_btn_simulation_pressed() -> void:
	print("Botón presionado")
