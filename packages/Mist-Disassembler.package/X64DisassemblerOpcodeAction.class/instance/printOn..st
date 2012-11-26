printing
printOn: stream
	stream
		nextPutAll: 'OpcodeAction{';
		nextPutAll: mnemonic.
	operandTypes
		do: [ :opType | 
			stream
				space;
				nextPutAll: opType ].
	stream nextPut: $}