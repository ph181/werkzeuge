extends Sprite2D

var drag = false
signal dragsignal

func _ready():
	connect("dragsignal", self, "_set_drag_pc")

func _process(delta):
	if drag:
		var mousepos = get_viewport().get_mouse_position()
		self.position = Vector2(mousepos.x, mousepos.y)

func _set_drag_pc():
	drag = !drag

func _on_torx_input_event(viewport, event, shape_idx):
