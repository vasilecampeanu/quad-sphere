@tool
extends Resource
class_name QuadSphereSettings

@export_range(3, 999) var resolution: int = 9 :
	set(value):
		resolution = value
		self.on_setting_changes()

var _quad_sphere: QuadSphere :
	get:
		return _quad_sphere

func init(_quad_sphere):
	self._quad_sphere = _quad_sphere

func on_setting_changes():
	if not self._quad_sphere:
		return
	self._quad_sphere.generate()
