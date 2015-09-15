grammar
methodSequence
	^ super methodSequence
		map: [ :a :pragmas :b :temporaries :c :morePragmas :d :statements :returnStatement | 
			| allStatments |
			allStatements := statements asOrderedCollection.
			allStatements addLast: returnStatement.
			FogTempVarScopeNode temporaries: temporaries statements: allStatements ]