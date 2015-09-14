grammar
methodSequence
	^ super methodSequence
		map: [ :a :pragmas :b :temporaries :c :morePragmas :d :statements ":returnStatement" | FogTempVarScopeNode temporaries: temporaries statements: statements	"asOrderedCollection addLast: returnStatement" ]