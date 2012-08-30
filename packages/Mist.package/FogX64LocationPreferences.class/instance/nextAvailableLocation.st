assigning
nextAvailableLocation
	compiler
		locationsDo: [ :loc | 
			(acceptableRegisters  includes: loc)
				ifTrue: [ ^ loc ] ]