private
children: newArgs
	newArgs size > 6
		ifTrue: [ self error: 'Too many args for a syscall' ].
	super children: newArgs