x64-compiling-pass1
assignOutputVariableAvoiding: siblingClobbered
	"Because I clobber my output's generationLocation before consuming my inputs (to clear the upper bytes), 
	I must avoid my children's consumptionLocations"

	| allClobbered |
	allClobbered := siblingClobbered copy.
	children do: [ :childVar | allClobbered add: childVar consumptionLocation ].
	super assignOutputVariableAvoiding: allClobbered