extends Node2D

@onready var text = get_node("Text")
@onready var key = get_node("Key")
@onready var encoded = get_node("Encoded")
@onready var eMessage = get_node("eMessage")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func enc(pText, pKey):
	var key1 = pKey.to_upper()
	var text1 = pText.to_upper()
	var otp = OTP.new(key1)
	return otp.encode(text1)

func do_enc():
	var results = enc(text.text, key.text)
	if results:
		encoded.text = results[1]
		eMessage.text = results[0]
	else:
		print("results size is wonky ", results)

func _on_text_text_changed(_new_text):
	do_enc()
	#encoded.text = new_text.to_upper()		

func _on_key_text_changed(_new_text):
	do_enc()


func _on_text_gui_input(event):
	pass # Replace with function body.
