address modes sent by perform:
group1
	"I'm a group 1 instruction, add a pseudo-operand that will divine my operand from the reg field of the R/M byte"

	operands add: (X64DisassemblerGroup1Operand forInstruction: self)