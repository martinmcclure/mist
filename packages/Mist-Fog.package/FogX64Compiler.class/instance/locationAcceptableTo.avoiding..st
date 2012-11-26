locations
locationAcceptableTo: prefs avoiding: clobberedSet
	" Answer the most desirable location, register or stack temp, that is both not in the given clobbered set and is acceptable to the given location preferences. If there is no such location, answer the unassignable NoLocation."

	self
		registersDo: [ :reg | 
			((clobberedSet isNotClobbered: reg) and: [ prefs isAcceptable: reg ])
				ifTrue: [ ^ reg ] ].
	^ prefs isStackFrameLocationOK
		ifTrue: [ self nextStackLocation ]
		ifFalse: [ FogX64Location noLocation ]