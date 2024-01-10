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

func posInString(char, str):
	for i in range(0, str.length()):
		if char == str[i]:
			return i

func encode(in_str):
	var encoded = ""
	
	print("in_str:", in_str)
	print("mKey:", mKey)
	
	if in_str.length() > mKey.length():
		return ["Text to encode must be shorter or the same length as the key.", ""]
	if not all_valid_letters(in_str):
		return ["The string to encode has letters that is not in the alphabet.", ""]
	if not all_valid_letters(mKey):
		return ["The key has letters that is not in the alphabet.", ""]
	var a = in_str
	var b = mKey
	for i in range(0, in_str.length()):
		print("i:", i)
		print("a[i]:", a[i], " b[i]:", b[i], " alp:", mAlphabet.length())
		#var x = a[i] + b[i]
		var x = posInString(in_str[i], mAlphabet)
		var x2 = posInString(mKey[i], mAlphabet)
		print("x:", x)
		print("x2:", x2)
		var y = mAlphabet.length()
		print("y:", y)
		var z = (x + x2) % y
		print("z:", z)
		encoded += mAlphabet[z]
	return ["", encoded]


# Constructor
func _init(key="", alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ"):
	mKey = key
	mAlphabet = alphabet
