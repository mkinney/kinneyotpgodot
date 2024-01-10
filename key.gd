# class definition:
class_name Key

var mSeed = ""
var mLength = 20
var mAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

func gen():
	var out = ""
	for i in range(mAlphabet.length()):
		var x = randi_range(0, mAlphabet.length())
		out += mAlphabet[x]

# Constructor
func _init(a_seed="", length=20, alphabet="ABCDEFGHIJKLMNOPQRSTUVWXYZ"):
	mSeed = a_seed
	mLength = length
	mAlphabet = alphabet
	
	if (mSeed == ""):
		# random TODO
		pass
