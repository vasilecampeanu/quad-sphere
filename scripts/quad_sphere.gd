@tool
extends Node3D
class_name QuadSphere

@export var settings: QuadSphereSettings

const CONSTS := preload("./core/constants.gd")
const QUADRILITERAL_FACE := preload("../scenes/terrain/quadrilateral_face.tscn")

func _ready():
	self.generate()

func generate():
	self.settings.init(self)

	for child in get_children():
		child.queue_free()

	for direction in self.CONSTS.DIRECTIONS:
		var face: QuadrilateralFace = self.QUADRILITERAL_FACE.instantiate()
		face.build(settings, direction)
		self.add_child(face)
