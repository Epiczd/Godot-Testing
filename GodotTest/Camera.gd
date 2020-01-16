extends Camera


func _ready():
	set_process_input(true)

func look_updown_rotation(rotation = 0):
	var toReturn = self.get_rotation() + Vector3(rotation, 0, 0)
	
	toReturn.x = clamp(toReturn.x, PI / -2, PI / 2)
	
	return toReturn
	
func look_leftright_rotation(rotation = 0):
	return get_rotation() + Vector3(0, rotation, 0)
	
func mouse(event):
	
	set_rotation(look_leftright_rotation(event.relative.x / -200))
	
	self.set_rotation(look_updown_rotation(event.relative.y / -200))
	
func _input(event):
	if event is InputEventMouseMotion:
		return mouse(event)
		
func _enter_tree():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _leave_tree():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func _input_movement(event):
	if Input.is_key_pressed(KEY_W):
		set_rotation(event.relative.x + 1)
		
func _physics_process(delta):
	var dir = Vector3()
	
	if(Input.is_key_pressed(KEY_W)):
		translate(Vector3.FORWARD)
		
	if(Input.is_key_pressed(KEY_SPACE)):
		translate(Vector3.UP)
		
	if(Input.is_key_pressed(KEY_D)):
		translate(Vector3.RIGHT)
		
	if(Input.is_key_pressed(KEY_A)):
		translate(Vector3.LEFT)
		
	if(Input.is_key_pressed(KEY_S)):
		translate(Vector3.BACK)
	dir.y = 0
	dir = dir.normalized()