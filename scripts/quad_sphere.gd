@tool
extends Node3D
class_name QuadSphere

# Exports
@export var settings: QuadSphereSettings

# Preloads
const CONSTS = preload("./core/constants.gd")

func _ready():
	self.generate()

func generate():
	self.settings.init(self)

	for child in get_children():
		child.queue_free()

	# TODO: Assemble QuadSphere
