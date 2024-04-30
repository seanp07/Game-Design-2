extends VehicleBody3D

const MAX_STEER = 0.4
const MAX_RPM = 300
const MAX_TORQUE = 200
const HORSE_POWER = 100

@onready var audio_player = $AudioStreamPlayer3D
var vroom = preload("res://assets/Car-Revving-Medium-A2-www.fesliyanstudios.com.mp3")
var idle = preload("res://assets/Sports-Car-Idle-www (mp3cut.net).mp3")
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func calc_engine_force(accel, rpm):
	return accel * MAX_TORQUE * (1- rpm / MAX_RPM)

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("ui_right", "ui_left") * MAX_STEER, delta*5)
	var accel = Input.get_axis("ui_down", "ui_up") * HORSE_POWER
	$backleft.engine_force = calc_engine_force(accel, abs($backleft.get_rpm()))
	$backright.engine_force = calc_engine_force(accel, abs($backright.get_rpm()))
	
	var fwd_mps = abs((self.linear_velocity * self.transform.basis).z)
	$Label.text = "%d mph" % (fwd_mps * 2.23694)
	
	$centermass.global_position = $centermass.global_position.lerp(self.global_position, delta*20)
	$centermass.transform = $centermass.transform.interpolate_with(self.transform, delta*5)
	$centermass/Camera3D.look_at(self.global_position.lerp(self.global_position + self.linear_velocity, delta * 5))
	check_and_right_vehicle()
	
	if accel == 100:
		audio_player.stream = idle
		audio_player.play()
	else:
		audio_player.stream = vroom
		audio_player.play()
	$AudioStreamPlayer3D.volume_db = fwd_mps * 2.23694

	
func check_and_right_vehicle():
	if self.global_transform.basis.y.dot(Vector3.UP) < 0:
		var current_rotation = self.rotation_degrees
		current_rotation.x = 0
		current_rotation.z = 0 
		self.rotation_degrees = current_rotation
