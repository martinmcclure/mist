grammar
temporaries
	^ super temporaries ==> [ :nodes | nodes second collect: [ :each | each inputValue ] ]