grammar
unaryExpression
	^ super unaryExpression
		map: [ :primary :selectors | 
			selectors
				inject: primary
				into: [ :receiver :selector | FogMessageSendNode receiver: receiver selector: selector arguments: #() ] ]