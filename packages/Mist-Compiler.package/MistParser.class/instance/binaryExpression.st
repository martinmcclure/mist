grammar
binaryExpression
	^ super binaryExpression
		map: [ :unaryExpression :binaryMessages | 
			binaryMessages
				inject: unaryExpression
				into: [ :receiver :binaryMessage | FogMessageSendNode receiver: receiver selector: binaryMessage first arguments: {(binaryMessage second)} ] ]