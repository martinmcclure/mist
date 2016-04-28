acccessing
addMethod: methodSpec
	| selector |
	self checkMutability.
	selector := methodSpec selector.
	(methods includesKey: selector)
		ifTrue: [ self error: 'Duplicate method selector in behavior.' ].
	methods at: selector put: methodSpec