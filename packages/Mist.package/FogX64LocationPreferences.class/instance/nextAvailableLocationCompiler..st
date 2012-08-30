assigning
nextAvailableLocationCompiler: compiler
	compiler
		locationsDo: [ :loc | 
			(acceptableRegisters  includes: loc)
				ifTrue: [ ^ loc ] ]