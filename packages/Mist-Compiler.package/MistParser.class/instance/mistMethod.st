grammar
mistMethod
	^ super mistMethod
		map: [ :methodDeclaration :methodSequence | FogMethodNode methodDeclaration: methodDeclaration methodSequence: methodSequence ]