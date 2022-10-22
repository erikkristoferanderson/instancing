extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
export (Texture) var texture setget _set_texture

func _set_texture(value):
	# If the texture variable is modified externally,
	# this callback is called.
	texture = value  # Texture was changed.
	update()  # Update the node's visual representation.

func _draw():
	draw_texture(texture, Vector2())
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
