instructions
add: source to: destination
	"64-bit reg/mem to 64-bit reg/mem. Cannot both be memory.
	ADD reg/mem64, reg64 01 /r Add reg64 to reg/mem64
	ADD reg64, reg/mem64 03 /r Add reg/mem64 to reg64."

	self
		destructiveOpSourceLoc: source
		destLoc: destination
		regSourceOpcode: 16r01
		regDestOpcode: 16r03