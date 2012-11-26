loops
loopLabeled: label
	^ loopsInScope at: label ifAbsent: [ self error: 'No loop with that label currently in scope' ]