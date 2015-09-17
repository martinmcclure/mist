grammar
literal
	^ super literal map: [ :object | FogSimpleLiteralNode value: object ]