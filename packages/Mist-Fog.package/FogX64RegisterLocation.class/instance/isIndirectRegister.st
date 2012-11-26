testing
isIndirectRegister
	"Answer true if I am a register whose contents can be used to address memory with no displacement."

	^ (#(4 5 12 13) includes: number) not