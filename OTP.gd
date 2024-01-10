# class definition:
class_name OTP

var mKey = ""
var mAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

func all_valid_letters(in_str):
	var retval = true
	for i in in_str:
		if i not in mAlphabet:
			retval = false
			break
	return retval

func posInString(c, s):
	for i in range(0, s.length()):
		if c == s[i]:
			return i

func encode(in_str):
	var encoded = ""
	if in_str.length() > mKey.length():
		return ["Text to encode must be shorter or the same length as the key.", ""]
	if not all_valid_letters(in_str):
		return ["The string to encode has letters that is not in the alphabet.", ""]
	if not all_valid_letters(mKey):
		return ["The key has letters that is not in the alphabet.", ""]
	for i in range(0, in_str.length()):
		var x = posInString(in_str[i], mAlphabet)
		var y = posInString(mKey[i], mAlphabet)
		var z = (x + y) % mAlphabet.length()
		encoded += mAlphabet[z]
	return ["", encoded]


func decode(in_str):
	var decoded = ""
	if in_str.length() > mKey.length():
		return ["Text to decode must be shorter or the same length as the key.", ""]
	if not all_valid_letters(in_str):
		return ["The encoded string has letters that is not in the alphabet.", ""]
	if not all_valid_letters(mKey):
		return ["The key has letters that is not in the alphabet.", ""]
		
	for i in range(0, in_str.length()):
		var x = posInString(in_str[i], mAlphabet)
		var y = posInString(mKey[i], mAlphabet)
		var c = x - y
		var z = 0
		if c < 0:
			z = mAlphabet.length() + c
		else:
			z = c % mAlphabet.length()
		decoded += mAlphabet[z]		
	return ["", decoded]	

# Constructor
func _init(key="", alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ"):
	mKey = key
	mAlphabet = alphabet
