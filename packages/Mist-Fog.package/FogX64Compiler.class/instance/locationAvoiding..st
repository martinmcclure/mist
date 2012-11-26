locations
locationAvoiding: clobberedSet
	" Answer the most desirable location, register or stack temp, that is not in the given clobbered set."

	self
		locationsDo: [ :loc | 
			(clobberedSet isNotClobbered: loc)
				ifTrue: [ ^ loc ] ]