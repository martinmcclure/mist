printing
printSibRefOn: stream
	isAbsolute
		ifTrue: [ 
			"Absolute addresses probably won't be used in Mist, but will print with a sign if they are."
			self printSignedDisplacementOn: stream ]
		ifFalse: [ 
			| baseRegName |
			baseRegName := (RegisterNames at: 8) at: baseRegNum + 1.
			stream nextPutAll: baseRegName.
			indexRegNum = 4
				ifFalse: [ 
					| indexRegName |
					indexRegName := (RegisterNames at: 8) at: indexRegNum + 1.
					stream
						nextPut: $+;
						nextPutAll: indexRegName;
						nextPut: $*.
					indexScale printOn: stream ].
			dispBytesSoFar ~= 0
				ifTrue: [ self printSignedDisplacementOn: stream ] ]