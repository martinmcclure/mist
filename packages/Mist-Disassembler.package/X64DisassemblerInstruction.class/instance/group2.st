address modes sent by perform:
group2
	"I'm a group 2 instruction, add a pseudo-operand that will divine my operand from the reg field of the R/M byte"

	operands add: (X64DisassemblerGroup2Operand forInstruction: self)