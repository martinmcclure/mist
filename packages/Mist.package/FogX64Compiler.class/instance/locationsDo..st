locations
locationsDo: aBlock
	"Iterate over all register and stack temp locations available in this architecture. 
	Iterate in preference order for assignment.
	Note that since there is no limit to stack temp locations this can run forever, so it
	depends on the block doing a non-local return when it's had enough."

	assignableRegisters do: aBlock.
	stackTemps do: aBlock.	"All currently-allocated locations are occupied; allocate a new stack frame temp."
	aBlock value: self allocateStackTemp.
	self error: 'Newly allocated location was not free? Bizarre.'