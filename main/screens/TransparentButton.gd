extends Button

@onready var original_modulate = modulate

@export var transparency := 0.75

func _ready() -> void:
	self.connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	self.connect("mouse_exited", Callable(self, "_on_mouse_exited"))
	_on_mouse_exited()

func _on_mouse_entered() -> void:
	modulate = original_modulate

func _on_mouse_exited() -> void:
	modulate.a = transparency
