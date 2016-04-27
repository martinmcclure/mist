grammar
symbolLiteral
	^ super symbolLiteral map: [ :hash :symbolValue :ws| symbolValue asSymbol ]