locations
restingLocationAcceptableTo: prefs avoiding: clobberedSet
	" Answer the most desirable location, register or stack temp, that is both not in the given clobbered set and is acceptable to the given location preferences. This could allocate a new stack temp. Answer nil if none fit the criteria. 
	Since this must qualify as a resting location, scratch registers are not considered."

	self
		existingLocationsDo: [ :loc | 
			((clobberedSet isNotClobbered: loc) and: [ prefs isAcceptable: loc ])
				ifTrue: [ ^ loc ] ].
	^ prefs isStackFrameLocationOK
		ifTrue: [ self allocateStackTemp ]
		ifFalse: [ nil ]