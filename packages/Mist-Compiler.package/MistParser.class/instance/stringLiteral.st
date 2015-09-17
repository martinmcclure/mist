grammar
stringLiteral
	^ super stringLiteral map: [ :token | token parsedValue ]