grammar
binaryMessage
	^ (binaryToken , binaryExpression) ==> [ :nodes | 
		Array 
			with: (Array with: nodes first)
			with: (Array with: nodes second) ]