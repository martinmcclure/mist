grammar
unaryToken
	^ super unaryToken map: [ :token | token inputValue ]