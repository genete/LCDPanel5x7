
extends Control


var color_on=Color(1,0,0,1)
var color_off=Color(0.15, 0.15, 0.15, 1)
var led_is_on

func _ready():
	led_on()
	pass

func led_on():
	get_node("led").set_modulate(color_on)
	led_is_on=true
	
func led_off():
	get_node("led").set_modulate(color_off)
	led_is_on=false

func set_color_on(var c):
	color_on=c
	if led_is_on:
		led_on()
	else:
		led_off()

func set_color_off(var c):
	color_off=c
	if led_is_on:
		led_on()
	else:
		led_off()
