converting
asOperandFor: assembler
	"Answer an AsmJit operand equivalent to me."

	self error: 'No one should ever actually try to emit an instruction involving a NoLocation.'