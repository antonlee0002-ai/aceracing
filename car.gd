extends Sprite2D
@onready var car: Sprite2D = $"."
@onready var sprite_2d: Sprite2D = $"../Sprite2D"
@onready var trafficlight: AnimatedSprite2D = $"../Trafficlight"

var b = false
var c = false
var forwards = false
var forwardness = 2
@onready var button_2: Button = $"../Button2"

func _process(delta: float) -> void:
	if trafficlight.a == true and b == false:
		if trafficlight.yellow == true:
			for x in range(7):
				car.scale *= 0.9999
				car.position.y -= 0.02
				await get_tree().create_timer(0.1).timeout
				c = true
			b = true
		elif trafficlight.yellow == false and b == false:
			for x in range(1000):
				forwards = true
				#car.scale *= 0.9999
				#car.position.y -= 0.02
				#await get_tree().create_timer(0.1).timeout
			b = true


func _on_button_2_pressed() -> void:
	print("jkjkkldjghjahgijashfjaijhfshfoshfoahsjh")
	get_tree().change_scene_to_file("res://node_2d.tscn")


func _on_timer_timeout() -> void:
	if forwards == true:
		car.scale *= 0.985
		car.position.y -= forwardness
		forwardness *= 1.005
