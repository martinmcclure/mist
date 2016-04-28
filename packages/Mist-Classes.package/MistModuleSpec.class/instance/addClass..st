acccessing
addClass: aClassSpec
	| className |
	self checkMutability.
	className := aClassSpec name.
	(definitions includes: className)
		ifTrue: [ self error: 'Duplicate class name in module spec.' ].
	definitions at: className put: aClassSpec.
	aClassSpec moduleSpec: self