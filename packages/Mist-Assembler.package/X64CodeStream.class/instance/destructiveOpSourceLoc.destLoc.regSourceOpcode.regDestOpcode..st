helpers
destructiveOpSourceLoc: source destLoc: destination regSourceOpcode: regSourceOp regDestOpcode: regDestOpcode
	"Generic 64-bit destructive op, such as add, and.... These operations use two inputs, then overwrite the dest input with the result. 
	Destination and source cannot both be in memory, one or both must be in a register."

	source isRegister
		ifTrue: [ 
			destination isRegister
				ifFalse: [ self error: 'Need to implement memory accesses' ].
			self writeOpcode: regSourceOp reg: source regMem: destination ]
		ifFalse: [ 
			self error: 'Need to implement memory accesses'.
			destination isRegister
				ifTrue: [ self writeOpcode: regDestOpcode reg: destination regMem: source ]
				ifFalse: [ self error: 'either source or dest must be a register' ] ]