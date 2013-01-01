address modes sent by perform:
Ib
	"Op mode Ib, an immediate value of 1 byte."

	| op |
	op := X64DisassemblerImmediateOperand forInstruction: self.
	op immediateSizeB.
	operands add: op