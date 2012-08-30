instructions
or: source to: destination
	"64-bit reg/mem to 64-bit reg/mem. Cannot both be memory.

	OR reg/mem64, reg64 09 /r OR the contents of a 64-bit register or memory operand
with the contents of a 64-bit register.	
	OR reg64, reg/mem64 0B /r OR the contents of a 64-bit register with the contents of
a 64-bit register or memory operand."

	self
		destructiveOpSourceLoc: source
		destLoc: destination
		regSourceOpcode: 16r09
		regDestOpcode: 16r0B