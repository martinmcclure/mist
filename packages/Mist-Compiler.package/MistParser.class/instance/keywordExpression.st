grammar
keywordExpression
	^ super keywordExpression
		map: [ :binaryExpression :keywordMessage | 
			keywordMessage isNil
				ifTrue: [ binaryExpression ]
				ifFalse: [ 
					FogMessageSendNode
						receiver: binaryExpression
						selector: (keywordMessage first inject: '' into: [ :selector :next | selector , next ])
						arguments: keywordMessage second ] ]