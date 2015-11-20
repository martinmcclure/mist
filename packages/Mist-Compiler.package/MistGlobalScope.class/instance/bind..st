as yet unclassified
bind: aName
	isMutable
		ifTrue: [ super bind: aName ]
		ifFalse: [ self error: 'Attempt to add a binding to the global scope.' ]