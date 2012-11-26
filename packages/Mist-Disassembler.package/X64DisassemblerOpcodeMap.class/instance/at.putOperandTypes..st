public
at: opcode putOperandTypes: operandTypeArray
	self
		atAllFrom: opcode
		to: opcode
		by: 1
		putOperandTypes: operandTypeArray