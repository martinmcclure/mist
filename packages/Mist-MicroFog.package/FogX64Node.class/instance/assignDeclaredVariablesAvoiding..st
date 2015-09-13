x64-compiling-pass1
assignDeclaredVariablesAvoiding: clobbered
	"Assign any variables I declare to locations that are not clobbered, then add that assignment to clobbered. Use the first available location, which could be a stack location or a register (but not a scratch register)."

	self declaredVariables
		do: [ :var | 
			| loc |
			loc := compiler restingLocationAvoiding: clobbered.
			var location: loc.
			clobbered add: loc ]