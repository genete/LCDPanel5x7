tool
extends GridContainer

const led_size=480
const grid_width=5
const grid_height=7

export var grid_width_pixels=32


# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	var grid_scale=float(grid_width_pixels)/grid_width/led_size
	set_scale(Vector2(grid_scale, grid_scale))
	parse_number(1)
	pass

func parse_number(var n):
	var node=get_node("dictionary")
	var dic=node.d
	var array=dic[n]
	var row=0
	for r in array:
		var col=0
		for l in r:
			var led=get_node("slot"+str(row)+str(col))
			if l:
				led.led_on()
			else:
				led.led_off()
			col=col+1
		row=row+1
