instructions
jmpTo: labelId

	"Unconditionally jump to the label with the given ID object."
	
	"JMP rel32off  E9 cd     Near jump with the target specified by a 32-bit signed  displacement."
	
	| label |
	output
		nextPut: 16rE9.
	self relativeRef32To: labelId