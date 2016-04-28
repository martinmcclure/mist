grammar
binaryToken
	^ super binaryToken map: [ :token | token inputValue ]