instance creation
withArguments: argNames children: children
	children isEmpty
		ifTrue: [ self error: 'A method node must have at least one child' ].
	^ self new arguments: argNames body: children