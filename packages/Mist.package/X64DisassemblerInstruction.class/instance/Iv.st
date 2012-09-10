address modes sent by perform:
Iv
	"Op mode Iv, an immediate value of 2, 4, or 8 bytes, matching the effective operand size."

	operands add: (X64DisassemblerImmediateOperand forInstruction: self)