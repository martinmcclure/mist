x64-compiling-pass1
assignOutputVariableAvoiding: siblingClobbered
	"Assign my output variable, if not dummy, to a generation location and a resting location, each of which is not siblingClobbered. Then, add those locations to siblingClobbered. 
	Use a location that is acceptable to both me and my parent, if possible. If that's not possible, use a location that is acceptable to me. If all locations acceptable to me are clobbered, use a scratch register for the generation location and the first available (non-clobbered) location for the resting location and I'll emit an extra move instruction in pass 2 to make up for the discrepancy."

	parent isDummy
		ifTrue: [ parent assignAsDummy ]
		ifFalse: [ 
			| possibleLocation generationLocation restingLocation |
			possibleLocation := compiler locationAcceptableTo: parent bothAcceptable avoiding: siblingClobbered.
			possibleLocation isAssignable
				ifTrue: [ generationLocation := restingLocation := possibleLocation ]
				ifFalse: [ 
					possibleLocation := compiler locationAcceptableTo: parent childAcceptable avoiding: siblingClobbered.
					possibleLocation isAssignable
						ifTrue: [ generationLocation := restingLocation := possibleLocation ]
						ifFalse: [ 
							generationLocation := self scratchOutputLocation.
							possibleLocation := compiler locationAcceptableTo: parent parentAcceptable avoiding: siblingClobbered.
							restingLocation := possibleLocation isAssignable
								ifTrue: [ possibleLocation ]
								ifFalse: [ siblingClobbered nextAvailableLocation ] ] ].
			parent generationLocation: generationLocation.
			parent restingLocation: restingLocation.
			siblingClobbered add: restingLocation.	"Generation location is either scratch or the same as resting location"
			compiler usingLocation: restingLocation ]