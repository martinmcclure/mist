x64-compiling-pass1
assignOutputVariableAvoiding: siblingClobbered
	"Destructive ops, being destructive, always use the location of their destination input as the generation location.
	However, that location may still be siblingClobbered, so the resting location may still need to be elsewhere."

	super assignOutputVariableAvoiding: siblingClobbered.
	parent generationLocation: self destination consumptionLocation