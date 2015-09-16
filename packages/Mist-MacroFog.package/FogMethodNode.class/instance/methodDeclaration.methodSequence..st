initialization
methodDeclaration: methodDeclaration methodSequence: methodSequence
	selector := methodDeclaration first inject: '' into: [ :composite :nextPart | composite , nextPart ].
	parameters := methodDeclaration last.
	methodBody := methodSequence