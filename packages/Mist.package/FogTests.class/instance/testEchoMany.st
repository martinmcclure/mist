tests
testEchoMany
	| program esc strings |
	program := FogTests echoMany.
	esc := String with: Character escape.
	strings := {''.
	'Q'.
	'42'.
	'The quick fox jumped over the lazy dog.'.
	'Multiple
		lines'}.
	strings do: [ :s | self compileAndRun: program withInput: s , esc expectingOutput: s ]