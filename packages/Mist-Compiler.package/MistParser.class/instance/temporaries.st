grammar
temporaries
	^ super temporaries ==> [ :nodes | nodes isEmpty ifTrue: [#()] ifFalse: [nodes second] ]