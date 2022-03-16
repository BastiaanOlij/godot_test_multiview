extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var interface = XRServer.find_interface("Native mobile")
	if interface and interface.initialize():
		get_viewport().use_xr = true;

var angle : float = 0;
func _process(delta):
	angle += delta
	$RedCube.rotation.y = angle
