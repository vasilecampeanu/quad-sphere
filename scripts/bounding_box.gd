@tool
extends MeshInstance3D
class_name BoundingBox

func _ready():
	var quadrilateral_face = get_parent()
	var cube_mesh = BoxMesh.new()
	var aabb = quadrilateral_face.get_aabb()
	cube_mesh.size = aabb.size
	self.mesh = cube_mesh
	self.transform.origin = aabb.position + aabb.size / 2.0
	
	var material = StandardMaterial3D.new()
	material.transparency = StandardMaterial3D.TRANSPARENCY_ALPHA
	material.albedo_color = Color(1, 1, 1, 0.1)
	self.mesh.material = material
