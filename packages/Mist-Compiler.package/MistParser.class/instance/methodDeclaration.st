grammar
methodDeclaration
	^ super methodDeclaration
		==> [ :decl | 
			{(decl first).
			(decl last)} ]