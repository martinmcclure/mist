tests
testEchoMany
	| esc lf strings |
	image startupMethod: (image compileSource: self class sourceEchoMany).
	esc := String with: Character escape.
	lf := String with: Character lf.
	strings := {''.
	'Q'.
	'42'.
	'The quick fox jumped over the lazy dog.'.
	'Multiple
		lines'}.
	strings do: [ :s | self runImageWithInput: s , esc expectingOutput: s , lf ]