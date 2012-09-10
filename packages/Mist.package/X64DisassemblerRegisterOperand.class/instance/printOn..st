printing
printOn: stream
	| regName |
	regName := (RegisterNames at: instruction effectiveOperandSize) at: regNum + 1.
	stream nextPutAll: regName