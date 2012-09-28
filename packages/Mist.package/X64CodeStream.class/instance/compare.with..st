instructions
compare: source with: destination
	"64-bit reg/mem to 64-bit reg/mem. Cannot both be memory.
	Subtracts the source operand from the destination operand, but does not store the result, just sets flags.
	
	CMP reg/mem64, reg64 39 /r  Compare operand with the contents of a 64-bit register.
	CMP reg64, reg/mem64 3B /r  Compare the contents of a 64-bit register with the contents of a 64-bit register or memory operand."

	self
		destructiveOpSourceLoc: source
		destLoc: destination
		regSourceOpcode: 16r39
		regDestOpcode: 16r3B