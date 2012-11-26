address modes sent by perform:
Gv
	"Op mode Gv, register specified by reg field of modRM byte. 
	Operand size could be 2, 4, or 8 bytes."

	operands add: (X64DisassemblerRegOperand forInstruction: self)