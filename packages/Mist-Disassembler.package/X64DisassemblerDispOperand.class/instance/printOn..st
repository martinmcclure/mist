printing
printOn: stream
	| targetAddress |
	targetAddress := instruction nextInstructionAddress + displacementValue.
	stream nextPutAll: '0x'.
	targetAddress printOn: stream base: 16