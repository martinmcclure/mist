portable-printing
printOn: stream
	stream
		nextPutAll: 'DeclaredVariable ''';
		nextPutAll: name;
		nextPut: $'