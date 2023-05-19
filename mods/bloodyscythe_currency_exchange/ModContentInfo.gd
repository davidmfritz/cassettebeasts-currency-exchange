extends ContentInfo

func init_content() -> void:
	assert(DLC.has_mod("cat_modutils", 0))
	var modutils: ContentInfo = DLC.mods_by_id["cat_modutils"]
	modutils.callbacks.connect_scene_ready("res://world/maps/interiors/TownHall.tscn", self, "_on_TownHall_ready")

func _on_TownHall_ready(scene: Spatial) -> void:
	var mod_scene: Spatial = preload("CustomTownHallSpawn.tscn").instance()
	scene.add_child(mod_scene)
