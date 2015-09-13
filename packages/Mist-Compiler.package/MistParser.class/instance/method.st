grammar
method
	^ super method
		map: [ :methodDeclaration :methodSequence | FogMethodNode methodDeclaration: methodDeclaration methodSequence: methodSequence ]