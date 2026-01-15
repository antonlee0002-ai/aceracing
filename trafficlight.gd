extends AnimatedSprite2D
@onready var trafficlight: AnimatedSprite2D = $"."
@onready var trafficlight_2: AnimatedSprite2D = $"../Trafficlight2"
signal go
var yellow = false
var a = false
func _ready() -> void:
	await get_tree().create_timer(3).timeout
	trafficlight.frame = 1
	trafficlight_2.frame = 1
	await get_tree().create_timer((100+randi()%200)/100).timeout
	trafficlight.frame = 2
	trafficlight_2.frame = 2
func allez():
	if trafficlight.frame == 2:
		a = true
		yellow = false
		trafficlight.frame = 3
	else:
		yellow = true
		a = true
func _input(event: InputEvent) -> void:
	if event is InputEventKey and a == false:
		if event.pressed:
			allez()
	elif event is InputEventJoypadButton and a == false:
		if event.pressed:
			allez()
func _on_button_pressed() -> void:
	if  a == false:
		allez()
