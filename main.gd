extends Node2D

@onready var encodeStuffs = get_node("EncodeStuffs")
@onready var decodeStuffs = get_node("DecodeStuffs")
@onready var generateStuffs = get_node("GenerateStuffs")
@onready var settingsStuffs = get_node("SettingsStuffs")
@onready var aboutStuffs = get_node("AboutStuffs")



# Called when the node enters the scene tree for the first time.
func _ready():
	encodeStuffs.visible = true
	decodeStuffs.visible = false
	generateStuffs.visible = false
	settingsStuffs.visible = false
	aboutStuffs.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_encode_tab_pressed():
	encodeStuffs.visible = true
	decodeStuffs.visible = false
	generateStuffs.visible = false
	settingsStuffs.visible = false
	aboutStuffs.visible = false

func _on_decode_tab_pressed():
	encodeStuffs.visible = false
	decodeStuffs.visible = true
	generateStuffs.visible = false
	settingsStuffs.visible = false
	aboutStuffs.visible = false

func _on_generate_tab_pressed():
	encodeStuffs.visible = false
	decodeStuffs.visible = false
	generateStuffs.visible = true
	settingsStuffs.visible = false
	aboutStuffs.visible = false

func _on_settings_tab_pressed():
	encodeStuffs.visible = false
	decodeStuffs.visible = false
	generateStuffs.visible = false
	settingsStuffs.visible = true
	aboutStuffs.visible = false

func _on_about_tab_pressed():
	encodeStuffs.visible = false
	decodeStuffs.visible = false
	generateStuffs.visible = false
	settingsStuffs.visible = false
	aboutStuffs.visible = true
