grammar
symbolLiteral
	^ super symbolLiteral map: [ :hash :symbolValueToken | symbolValueToken parsedValue asSymbol ]