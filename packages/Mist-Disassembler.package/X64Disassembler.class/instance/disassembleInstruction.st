private
disassembleInstruction
	| instruction byte |
	instruction := X64DisassemblerInstruction startAddress: currentAddress.
	[ instruction hasCompleteOpcode ] whileFalse: [ instruction opcodeByte: self nextByte ].
	instruction expectsModRM
		ifTrue: [ instruction modRMByte: self nextByte ].
	instruction expectsSIB
		ifTrue: [ instruction sibByte: self nextByte ].
	instruction displacementSize timesRepeat: [ instruction dispByte: self nextByte ].
	instruction immediateSize timesRepeat: [ instruction immediateByte: self nextByte ].
	instruction printLineOn: output