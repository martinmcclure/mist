private
initialStackPointerAddress
	"Hard coded for now. Current default ELF file puts the image at the beginning of a 1MB area at 16r400000, and allocates a total of 1MiB memory (16r100000) ending at 16r4FFFFF. Thus, initializing the stack pointer to 16r500000 puts the stack at the end of our allocated memory. At some point the stack may be its own segment and require different initialization."
	^16r500000