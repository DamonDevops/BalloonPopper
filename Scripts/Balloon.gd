extends Area3D

@export var clicks_to_pop :int = 5
var expand_size :float = 0.2
var score :int = 1


func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * expand_size
		clicks_to_pop -= 1
		
		if clicks_to_pop == 0:
			get_node("/root/Main").increase_score(score)
			queue_free()
