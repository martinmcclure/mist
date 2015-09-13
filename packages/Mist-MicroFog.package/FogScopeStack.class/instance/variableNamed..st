accessing
variableNamed: name
	stack
		do: [ :scope | 
			| var |
			var := scope at: name ifAbsent: [ nil ].
			var == nil
				ifFalse: [ ^ var ] ].
	self error: 'Variable name not in scope'