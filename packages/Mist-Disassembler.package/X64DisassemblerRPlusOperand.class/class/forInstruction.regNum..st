instance creation
forInstruction: instruction regNum: regNum
	| inst |
	inst := super forInstruction: instruction.
	inst regNum: regNum.
	^ inst