
extends HBoxContainer

var digits=3
var digit_width=32

func _ready():
	var scale=get_node("Digit0").get_scale_for_width(digit_width)
	set_scale(Vector2(scale, scale))



