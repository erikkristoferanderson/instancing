extends Node

var small_balls = []

#export (Line2D) var line

export (PackedScene) var Ball
var counter = 0
func _input(event):
	pass
	if event.is_action_pressed("click"):
		for _i in range(20):
			var new_ball = Ball.instance()
			new_ball.position = get_viewport().get_mouse_position()
			new_ball.position.x += randi() % 200
			new_ball.position.y += randi() % 50
			add_child(new_ball)
			small_balls.append(new_ball)
			counter += 1
		print(counter)



var print_counter = 0


var bins = [20, 40, 60, 80, 100, 120, 140, 160, 180, 200]

func _process(_delta):
	var linear_velocity_lengths = []
	print_counter += 1
	for ball in small_balls:
		linear_velocity_lengths.append(ball.linear_velocity.length())
#		var sum = 0
#		for i in len(linear_velocity_lengths):
	var dict_of_linear_velocity_to_count = {}
	for bin in bins:
		dict_of_linear_velocity_to_count[bin] = 0
	if print_counter > 50:
		for linear_velocity in linear_velocity_lengths:
	#		print(linear_velocity)
			for bin in bins:
	#			print(bin)
				if bin -20 <= linear_velocity and linear_velocity < bin:
					if dict_of_linear_velocity_to_count.get(bin):
						dict_of_linear_velocity_to_count[bin] += 1
					else:
						dict_of_linear_velocity_to_count[bin] = 1
		pass
		var poolvector2array = PoolVector2Array()
#		var my_texture = Texture()
		for bin in bins:
			poolvector2array.push_back(Vector2(bin, dict_of_linear_velocity_to_count[bin]))
		
		print(dict_of_linear_velocity_to_count)
		print_counter = 0
#		var array = PoolVector2Array()
		var arr = PoolVector2Array()
		for bin in bins:
			var x = bin
			var y = 1.5*( - dict_of_linear_velocity_to_count[bin])
			arr.append(Vector2(x, y))
			
		$MyNode2D.mypoolvector2array = arr
#		$MyLine2D.draw_polyline_colors(poolvector2array, PoolColorArray())
#		$MyNode2D.Texture = array
#_draw()
#func _draw():
#	$MyCanvasLayer.draw_line(Vector2(0,0), Vector2(50, 50), Color(255, 0, 0), 1)
#var varray = PoolVector2Array()
#    for step in self.path:
#        varray.push_back(step.p)
#    draw_polyline(varray, color)
	
			
#	if Input.is_action_pressed("click"):
		
#			var new_ball = Ball.instance()
#			new_ball.position = get_viewport().get_mouse_position()
#			new_ball.position.x += randi() *1000 % 100
#			add_child(new_ball)
#			counter += 1
#		print(counter)





