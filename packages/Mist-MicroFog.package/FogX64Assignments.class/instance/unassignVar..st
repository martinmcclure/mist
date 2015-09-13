assigning
unassignVar: variable
	"Remove the assignment for the given variable. If the given variable is not assigned, ignore."

	| existingLocation |
	existingLocation := v2l at: variable ifAbsent: [ ^ nil ].
	l2v removeKey: existingLocation.
	v2l removeKey: variable