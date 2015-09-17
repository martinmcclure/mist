grammar
numberLiteral
	^ super numberLiteral map: [ :token | token parsedValue at: 2 ]