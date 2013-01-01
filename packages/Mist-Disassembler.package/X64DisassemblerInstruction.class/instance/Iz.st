address modes sent by perform:
Iz
	"Op mode Iz, an immediate value of 2 or 4 bytes, 2 bytes if the effective operand size is 16 bits, 4 bytes otherwise."

	| op |
	op := X64DisassemblerImmediateOperand forInstruction: self.
	op immediateSizeZ.
	operands add: op