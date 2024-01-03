class_name MainMenu
extends Control



@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button as Button
@onready var options_button = $MarginContainer/HBoxContainer/VBoxContainer/Option_Button as Button
@onready var quit_button = $MarginContainer/HBoxContainer/VBoxContainer/Quit_Button as Button
@onready var options_menu = $Options_Menu as OptionsMenu
@onready var margin_container = $MarginContainer as MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	handle_connecting_signals()
	

func on_options_pressed() -> void:
	margin_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true

func on_quit_pressed() -> void:
	get_tree().quit()

func on_exit_options_menu() -> void:
	margin_container.visible = true
	options_menu.visible = false
	

func handle_connecting_signals() -> void:
	options_button.button_down.connect(on_options_pressed)
	quit_button.button_down.connect(on_quit_pressed)
	options_menu.exit_options_menu.connect(on_exit_options_menu)
