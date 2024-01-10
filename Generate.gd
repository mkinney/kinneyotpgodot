extends Node2D

@onready var seed_entered = get_node("Seed")
@onready var generated = get_node("Generated")

var otp

# Called when the node enters the scene tree for the first time.
func _ready():
	otp = OTP.new("")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_seed_text_changed(new_text):
	var g = otp.generate_lots(seed_entered.text)
	generated.set_text(g)
