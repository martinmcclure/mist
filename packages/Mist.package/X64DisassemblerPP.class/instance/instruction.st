rules-streams
instruction
	^ (rexPrefix optional , opcodeAndOperands)
		==> [ :all | 
			output nextPutAll: currentInstruction text.
			currentInstruction := X64DisassemblerInstruction startAddress: currentAddress ]