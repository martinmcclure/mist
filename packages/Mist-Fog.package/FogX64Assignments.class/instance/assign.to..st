assigning
assign: variable to: location
	"If the variable or is already assigned to a different location,
	or if the location is already assigned to a different variable, error."

	| existingUse existingLocation |
	existingUse := l2v at: location ifAbsent: [ nil ].
	(existingUse notNil and: [ existingUse ~~ variable ])
		ifTrue: [ self error: 'variable already assigned' ].
	existingLocation := v2l at: variable ifAbsent: [ nil ].
	(existingLocation notNil and: [ existingLocation ~~ location ])
		ifTrue: [ self error: 'location already assigned' ].
	l2v at: location put: variable.
	v2l at: variable put: location