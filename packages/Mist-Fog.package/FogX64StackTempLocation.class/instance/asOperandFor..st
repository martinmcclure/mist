converting
asOperandFor: assembler
	"Answer an AsmJit operand equivalent to me."

	^ assembler RBP ptr + offset