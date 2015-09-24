support
parseString: sourceString forLiteralResult: anObject
	| result |
	result := MistParser parse: sourceString startingAt: #literalNode.
	self assert: result class equals: FogSimpleLiteralNode.
	self assert: result value equals: anObject