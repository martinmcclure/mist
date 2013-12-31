instance creation
address: fixedAddress children: children
	children size > 6
		ifTrue: [ self error: 'Stack-based arguments are not yet supported, limiting number of arguments to 6' ].
	^ self new
		address: fixedAddress;
		children: children;
		yourself