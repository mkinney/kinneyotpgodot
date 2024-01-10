extends Node2D

@onready var text = get_node("Text2Decode")
@onready var key = get_node("dKey")
@onready var decoded = get_node("Decoded")
@onready var dMessage = get_node("dMessage")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func dec(pText, pKey):
	var key1 = pKey.to_upper()
	var text1 = pText.to_upper()
	var otp = OTP.new(key1)
	return otp.decode(text1)

func do_dec():
	var results = dec(text.text, key.text)
	if results:
		decoded.text = results[1]
		dMessage.text = results[0]
	else:
		print("results size is wonky ", results)

func _on_text_2_decode_text_changed(_new_text):
	do_dec()

func _on_d_key_text_changed(_new_text):
	do_dec()
