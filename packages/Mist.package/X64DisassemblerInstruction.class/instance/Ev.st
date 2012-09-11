address modes sent by perform:
Ev
	"Op mode Ev, register or memory as specified by r/m field of modRM byte. 
	Operand size could be 2, 4, or 8 bytes."

	operands add: (X64DisassemblerRegMemOperand forInstruction: self)