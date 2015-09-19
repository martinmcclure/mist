grammar
literalNode
	^ super literalNode map: [ :object | FogSimpleLiteralNode value: object ]