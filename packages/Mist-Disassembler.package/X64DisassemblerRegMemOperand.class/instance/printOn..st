printing
printOn: stream
	mod = 3
		ifTrue: [ 
			| regName |
			regName := (RegisterNames at: instruction effectiveOperandSize) at: regNum + 1.
			stream nextPutAll: regName ]
		ifFalse: [ 
			stream nextPut: $[.
			self printMemoryRefOn: stream.
			stream nextPut: $] ]