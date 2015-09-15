grammar
impliedReturnSelf
	^ super impliedReturnSelf ==> [ :nodes | FogVariableReferenceNode variableName: 'self' ]