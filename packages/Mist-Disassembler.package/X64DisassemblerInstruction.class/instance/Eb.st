address modes sent by perform:
Eb
	"Op mode Eb, register or memory as specified by r/m field of modRM byte. 
	Operand size is 1 byte."

	isByteOpMode := true.
	operands add: (X64DisassemblerRegMemOperand forInstruction: self)