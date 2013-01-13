converting
asOperandFor: assembler
	"Answer an AsmJit operand equivalent to me."

	^ assembler perform: self name64