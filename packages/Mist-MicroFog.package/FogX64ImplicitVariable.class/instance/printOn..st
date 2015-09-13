printing
printOn: stream
	stream nextPutAll: 'ImplicitVariable '.
	isDummy ifTrue: [stream nextPutAll: 'dummy '].
	stream nextPutAll: 'result of '.
	childNode printOn: stream