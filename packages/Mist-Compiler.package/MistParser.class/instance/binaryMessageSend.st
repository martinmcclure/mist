grammar
binaryMessageSend
	^ super binaryMessageSend
		map: [ :unaryExpression :binaryToken :binaryExpression | FogMessageSendNode receiver: unaryExpression selector: binaryToken arguments: {binaryExpression} ]