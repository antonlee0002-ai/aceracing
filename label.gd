extends Label
@onready var label: Label = $"."
@onready var trafficlight: AnimatedSprite2D = $"../../Trafficlight"
var time = 0
func _process(delta: float) -> void:
	if trafficlight.frame == 2:
		time += delta
		label.text = str(snapped(time,0.0001)*1000) + "ms"
