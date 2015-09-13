locations
existingLocationsDo: aBlock
	"Iterate over all register and currently-allocated stack temp locations 
	available in this architecture, with the exception of scratch registers. 
	Iterate in preference order for assignment.
	The block may do a non-local return when it's seen enough locations."

	assignableRegisters do: aBlock.
	stackTemps do: aBlock