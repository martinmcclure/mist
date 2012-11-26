queries
nextAvailableLocation
	compiler
		locationsDo: [ :loc | 
			(self includes: loc)
				ifFalse: [ ^ loc ] ]