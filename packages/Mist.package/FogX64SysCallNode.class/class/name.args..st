instance creation
name: callName args: args
	| inst |
	inst := self new.
	inst number: (NamesToNumbers at: callName).
	inst children: args.
	^ inst