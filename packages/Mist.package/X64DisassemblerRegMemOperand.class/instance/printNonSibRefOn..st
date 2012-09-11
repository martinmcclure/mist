printing
printNonSibRefOn: stream
	"In Mist, effective address size is always 64 bits, thus RegisterNames at: 8"

	| regName |
	regName := isRipRelative
		ifTrue: [ 'rip' ]
		ifFalse: [ (RegisterNames at: 8) at: regNum + 1 ].
	stream nextPutAll: regName.
	dispBytesSoFar ~= 0
		ifTrue: [ 
			stream nextPut: $+.
			self printSignedDisplacementOn: stream ]