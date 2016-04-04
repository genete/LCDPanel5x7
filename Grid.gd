tool
extends GridContainer

const led_size=480
const grid_width=5
const grid_height=7

export var grid_width_pixels=32 setget set_grid_width

func set_grid_width(new_width):
	grid_width_pixels=new_width
	var grid_scale=float(grid_width_pixels)/grid_width/led_size
	set_scale(Vector2(grid_scale, grid_scale))
	

func _ready():
	set_grid_width(128)
	parse_number(0)
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

func invert():
	for c in range(grid_width):
		for r in range(grid_height):
			var led=get_node("slot"+str(r)+str(c))
			led.invert=true
