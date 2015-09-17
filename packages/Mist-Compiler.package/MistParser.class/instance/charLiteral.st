grammar
charLiteral
	^ super charLiteral map: [ :token | token parsedValue second ]