locations
restingLocationAvoiding: clobberedSet
	" Answer the most desirable location, register or stack temp, that is not in the given clobbered set. 
	Since this must qualify as a resting location, scratch registers are not considered."

	self
		existingLocationsDo: [ :loc | 
			(clobberedSet isNotClobbered: loc)
				ifTrue: [ ^ loc ] ].
	^ self allocateStackTemp