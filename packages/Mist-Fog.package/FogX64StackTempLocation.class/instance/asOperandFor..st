converting
asOperandFor: assembler
	"Answer an AsmJit operand equivalent to me."

	^ assembler RSP ptr + offset