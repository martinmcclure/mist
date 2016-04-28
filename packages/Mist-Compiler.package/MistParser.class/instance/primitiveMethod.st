grammar
primitiveMethod
	^ super primitiveMethod
		map: [ :methodDeclaration :methodBody | FogPrimitiveMethodNode methodDeclaration: methodDeclaration methodSequence: methodBody last ]