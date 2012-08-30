initialization
initialize
	super initialize.
	currentInstruction := X64DisassemblerInstruction new.
	currentAddress := 0