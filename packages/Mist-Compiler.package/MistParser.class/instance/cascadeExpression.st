grammar
cascadeExpression
	^ super cascadeExpression
		map: [ :keywordExpression :cascadeMessages | 
			cascadeMessages isEmpty
				ifFalse: [ self error: 'Cascades are not yet supported.' ].
			keywordExpression ]