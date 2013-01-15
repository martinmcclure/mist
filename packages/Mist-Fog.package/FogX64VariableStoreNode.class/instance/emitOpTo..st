x64-compiling-pass2
emitOpTo: codeStream
	codeStream
		mov: ((children at: 1) consumptionLocation asOperandFor: codeStream)
		to: (variable location asOperandFor: codeStream)