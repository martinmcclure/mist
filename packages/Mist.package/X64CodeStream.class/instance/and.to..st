instructions
and: source to: destination
	"64-bit reg/mem to 64-bit reg/mem. Cannot both be memory.
	
	AND reg/mem64, reg64 21 /r AND the contents of a 64-bit register or memory location with the contents of a 64-bit register.
	AND reg64, reg/mem64 23 /r AND the contents of a 64-bit register with the contents of a 64-bit memory location or register."

	self
		destructiveOpSourceLoc: source
		destLoc: destination
		regSourceOpcode: 16r21
		regDestOpcode: 16r23