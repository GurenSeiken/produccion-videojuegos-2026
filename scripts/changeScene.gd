extends Node

func cambiar_de_escena0() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	
func cambiar_de_escena1() -> void:
	get_tree().change_scene_to_file("res://scenes/mainLevel1.tscn")


func _on_pressed_button_1() -> void:
	cambiar_de_escena1()

func _on_pressed_button2() -> void:
	cambiar_de_escena0()


func _on_pressed() -> void:
	pass # Replace with function body.
