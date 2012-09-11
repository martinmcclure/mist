address modes sent by perform:
Gb
	"Op mode Gb, register specified by reg field of modRM byte. 
	Operand size is 1 byte."

	isByteOpMode := true.
	operands add: (X64DisassemblerRegOperand forInstruction: self)