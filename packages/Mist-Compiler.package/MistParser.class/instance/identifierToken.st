grammar
identifierToken
	^ super identifierToken map: [ :token | token inputValue ]