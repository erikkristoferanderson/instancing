extends Node2D

var mypoolvector2array = PoolVector2Array()

	
func _draw():
#	draw_texture(texture, Vector2())
#	var array = PoolVector2Array()
#	array.push_back(Vector2(0, 0))
#	array.push_back(Vector2(0, 100))
#	array.push_back(Vector2(200, 100))
#	print('hello 8215829')
#	print(array) 
#	draw_polyline(array, Color.white, 1.0)
#	$MyNode2D.draw_polyline(arr,Color.white, 1.0)
	if len(mypoolvector2array) > 2:
#		mypoolvector2array.append(Vector2(0, 0))
#		mypoolvector2array.append(Vector2(200, 0))
		mypoolvector2array.append(Vector2(300, 0))
		mypoolvector2array.append(Vector2(0, 0))
		mypoolvector2array.append(Vector2(0, -100))
		mypoolvector2array.append(Vector2(0, 0))
#		mypoolvector2array.append(Vector2(200, 0))
		draw_polyline(mypoolvector2array, Color.red, 3.0)





# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
#export (Texture) var texture setget _set_texture

func _process(_delta):
	update()
 # [[]] (empty PoolVector2Array within an Array)






	# Your draw commands here
#var mypool := PoolVector2Array()
#mypool.append(Vector2(12, 34))
#draw_multiline(mypool,Color(1, 1, 1))








#func _set_texture(value):
#	# If the texture variable is modified externally,
#	# this callback is called.
#	texture = value  # Texture was changed.
#	update()  # Update the node's visual representation.
#
#func _draw():
#	draw_texture(texture, Vector2())
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass
