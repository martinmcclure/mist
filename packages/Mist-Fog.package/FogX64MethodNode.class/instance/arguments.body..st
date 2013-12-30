initialize-release
arguments: argNames body: childNodes
	argNames size > 6
		ifTrue: [ self error: 'Stack-passed arguments are not handled yet. Oops.' ].
	self
		variables: argNames;
		children: childNodes