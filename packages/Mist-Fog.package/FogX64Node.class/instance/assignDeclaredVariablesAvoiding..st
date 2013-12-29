x64-compiling-pass1
assignDeclaredVariablesAvoiding: clobbered
	"Assign any variables I declare to locations that are not clobbered, then add that assignment to clobbered. Use the first available location."

	self declaredVariables
		do: [ :var | 
			| loc |
			loc := clobbered nextAvailableLocation.
			var location: loc.
			clobbered add: loc ]