extends AnimatedSprite2D
@onready var sign: AnimatedSprite2D = $"."
@onready var car: Sprite2D = $"../Car"
func _process(delta: float) -> void:
	if car.c == true:
		await get_tree().create_timer(1).timeout
		sign.frame = 1
