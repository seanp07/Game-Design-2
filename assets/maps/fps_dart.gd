extends RigidBody3D


var ATTACK = 5
var ATTACK_CRIT = 2 * ATTACK
var SPEED = 50
var DROP = 0.001
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity") * DROP 
var spawn_origin: Vector3

