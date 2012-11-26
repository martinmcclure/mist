accessing
mode
	"Answer the mode, which is the two-bit field of the modrm byte in an x86_64 instruction. This field is used to specify the mode of one argument; the other argument is always a register. "

	^ self subclassResponsibility