extends AudioStreamPlayer

func _ready():
	set_process_input(true)
	
func _input(event):
	if Input.is_key_pressed(KEY_SPACE):
		self.play()

