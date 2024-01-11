class_name MainMenu extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var options_button = $MarginContainer/HBoxContainer/VBoxContainer/Option_Button as Button
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/Quit_Button as Button
@onready var options_menu = $Options_Menu as OptionsMenu
@onready var margin_container = $MarginContainer as MarginContainer
@onready var chapter_select = $Chapter_Select as ChapterSelect

@onready var sound = $MarginContainer/HBoxContainer/VBoxContainer/Option_Button/AudioStreamPlayer as AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	handle_connecting_signals()

func on_start_pressed() -> void:
	margin_container.visible = false
	chapter_select.set_process(true)
	chapter_select.visible = true
	sound.play()

func on_options_pressed() -> void:
	margin_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true
	sound.play()

func on_quit_pressed() -> void:
	get_tree().quit()

func on_exit_options_menu() -> void:
	margin_container.visible = true
	options_menu.visible = false
	sound.play()

func on_exit_chapter_menu() -> void:
	margin_container.visible = true
	chapter_select.visible = false
	sound.play()
	

func handle_connecting_signals() -> void:
	options_button.button_down.connect(on_options_pressed)
	start_button.button_down.connect(on_start_pressed)
	quit_button.button_down.connect(on_quit_pressed)
	options_menu.exit_options_menu.connect(on_exit_options_menu)
	chapter_select.exit_chapter_menu.connect(on_exit_chapter_menu)
	
