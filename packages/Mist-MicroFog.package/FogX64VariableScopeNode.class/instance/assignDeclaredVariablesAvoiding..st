x64-compiling-pass1
assignDeclaredVariablesAvoiding: clobbered
	"Assign any variables I declare to locations that are not clobbered, then add that assignment to clobbered. Use the first available location."

	| poppedScope |
	super assignDeclaredVariablesAvoiding: clobbered.
	poppedScope := compiler popScope.
	poppedScope == vDict
		ifFalse: [ self error: 'Unbalanced variable scope.' ]