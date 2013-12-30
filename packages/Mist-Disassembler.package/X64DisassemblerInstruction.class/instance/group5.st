address modes sent by perform:
group5
	"I'm a group 2 instruction, add a pseudo-operand that will divine my operand from the reg field of the R/M byte"

	operands add: (X64DisassemblerGroup5Operand forInstruction: self)