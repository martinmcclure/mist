helpers
jcc: conditionCode to: labelId
	"conditionCode is the low-order four bits of the opcode.
	If the condition is met jump to the label with the given ID."

	"Jcc rel32off    0F 80 cd"

	| label |
	output
		nextPut: 16r0F;
		nextPut: 16r80 + conditionCode.
	self relativeRef32To: labelId