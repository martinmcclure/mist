x64-compiling-pass1
assignOutputVariableAvoiding: siblingClobbered
	"Destructive ops, being destructive, always use the location of their destination input as the output location.
	This location should never be in the siblingClobbered, but we check as an assertion."

	| loc |
	loc := self destination consumptionLocation.
	(siblingClobbered isNotClobbered: loc)
		ifTrue: [ 
			parent generationLocation: loc; restingLocation: loc.
			siblingClobbered add: loc.
			compiler usingLocation: loc ]
		ifFalse: [ self error: 'attempt to use clobbered location' ]