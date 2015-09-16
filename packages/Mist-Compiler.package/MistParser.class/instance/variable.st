grammar
variable
	^ super variable ==> [ :variableName | FogVariableReferenceNode variableName: variableName ]