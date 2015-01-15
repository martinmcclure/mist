printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ': ';
		nextPutAll: name