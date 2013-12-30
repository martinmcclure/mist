assigning
uniqueScratchRegister
	| reg |
	self specifiesUniqueRegister
		ifFalse: [ self error: 'Expected a unique register preference' ].
	reg := acceptableRegisters asArray first.
	^ reg isScratchRegister
		ifTrue: [ reg ]
		ifFalse: [ self error: 'Only a scratch register is safe to assign this way.' ]