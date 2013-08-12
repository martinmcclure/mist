tests
testEchoMany
	| program esc lf strings |
	image startMethod: (image compile: self class sourceEchoMany).
	esc := String with: Character escape.
	lf := String with: Character lf.
	strings := {''.
	'Q'.
	'42'.
	'The quick fox jumped over the lazy dog.'.
	'Multiple
		lines'}.
	strings do: [ :s | self runImage: image withInput: s , esc expectingOutput: s , lf ]