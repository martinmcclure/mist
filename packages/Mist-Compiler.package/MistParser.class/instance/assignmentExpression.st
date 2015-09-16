grammar
assignmentExpression
	^ super assignmentExpression
		map: [ :variable :expression | FogAssignmentNode variable: variable expression: expression ]