extends Node2D

func _on_rich_text_label_gui_input(event):
	if (event is InputEventMouseButton && event.pressed && event.button_index == 1):
		get_tree().change_scene_to_file("res://node_2d.tscn")
		
