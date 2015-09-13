initialization
methodDeclaration: methodDeclaration methodSequence: methodSequence
	selectorParts := methodDeclaration first.
	parameters := methodDeclaration last.
	temporaryDeclarations := methodSequence