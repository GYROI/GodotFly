extends Node2D

func _process(delta):
	self.text = str(Global.score)

func _on_label_gui_input(event):
	Global.score += 1
