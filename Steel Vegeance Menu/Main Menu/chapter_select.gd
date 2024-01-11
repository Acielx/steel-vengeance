class_name ChapterSelect
extends Control

@onready var exit_button = $Exit_Button  as Button
 


signal exit_chapter_menu

func _ready():
	exit_button.button_down.connect(on_exit_pressed)
	set_process(false)
	

func on_exit_pressed() -> void:
	exit_chapter_menu.emit()
	set_process(false)
	
