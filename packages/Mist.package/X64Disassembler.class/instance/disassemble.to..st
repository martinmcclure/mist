public
disassemble: inStream to: outStream
	input := inStream.
	output := outStream.
	[ input atEnd ] whileFalse: [ self disassembleInstruction ]