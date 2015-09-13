grammar
methodDeclaration
	^ super methodDeclaration
		==> [ :decl | 
			{(decl first collect: [ :each | each inputValue ]).
			(decl last collect: [ :each | each inputValue ])} ]