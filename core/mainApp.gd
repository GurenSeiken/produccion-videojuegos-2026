extends Node

@onready var scene_container: Control = $SceneContainer
var current_scene: Node = null

func _ready() -> void:
	EventBus.navigation_requested.connect(_on_navigation_requested)
	_on_navigation_requested("res://scenes/menu/menuPanel.tscn")

func _on_navigation_requested(target_scene_path: String) -> void:
	if current_scene:
		current_scene.queue_free()
	
	var new_scene_resource = load(target_scene_path)
	if new_scene_resource:
		current_scene = new_scene_resource.instantiate()
		scene_container.add_child(current_scene)
