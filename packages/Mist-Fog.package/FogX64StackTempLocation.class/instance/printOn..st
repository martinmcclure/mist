printing
printOn: aStream
	aStream
		nextPutAll: 'temp:';
		nextPutAll: (offset negated // 8) printString