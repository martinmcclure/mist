grammar
identifier
	^ (PPPredicateObjectParser on: [ :each | each isLetter or: [ each = $_ ] ] message: 'letter expected')
		,
			(PPPredicateObjectParser on: [ :each | each isAlphaNumeric or: [ each = $_ ] ] message: 'letter or digit expected') star