class_name Settings_Tab_Container
extends Control

@onready var sound = $TabContainer/Sound/AudioStreamPlayer as AudioStreamPlayer 
@onready var tab_bar = $TabContainer/Sound as TabBar


func _ready():
	tab_bar.tab_button_pressed.connect(on_tab_pressed)
	
func on_tab_pressed()-> void:
	sound.play()
