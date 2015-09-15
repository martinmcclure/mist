grammar
keywordToken
	^ super keywordToken map: [ :token | token inputValue ]