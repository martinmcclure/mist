assigning
assignLocationsAvoiding: siblingClobbered compiler: compiler
	"Assign all three of my locations, trying to keep as many as possible the same, within these constraints:
	* The generation location must be acceptable to my child node.
	* The resting location must not be siblingClobbered.
	* The consumption location must be acceptable to my parent node.
	* If the generation and resting locations are not the same location, at least one must be a register.
	* If the resting and consumption locations are not the same location, at least one must be a register.
	
	To achieve the latter two constraints, we constrain the generation and consumption locations to be registers 
	when they're not the same as the resting location, though this is technically more strict than required.
		
	Answer the locations assigned."

	self isDummy
		ifTrue: [ self assignAsDummy ]
		ifFalse: [ 
			| ca pa bothAcceptable trialLocation |
			ca := childNode acceptableGenerationLocations.
			pa := parentNode acceptableConsumptionLocationsForChildNum: indexInParent.
			bothAcceptable := ca intersection: pa.
			trialLocation := compiler restingLocationAcceptableTo: bothAcceptable avoiding: siblingClobbered.
			trialLocation == nil
				ifFalse: [ 
					"Got it in one. Sweet!"
					generationLocation := restingLocation := consumptionLocation := trialLocation ]
				ifTrue: [ 
					"Failed to find a single location for all three. Try for generation and resting the same."
					trialLocation := compiler restingLocationAcceptableTo: ca avoiding: siblingClobbered.
					trialLocation == nil
						ifFalse: [ 
							generationLocation := restingLocation := trialLocation.
							consumptionLocation := compiler anyRegisterLocationAcceptableTo: pa ]
						ifTrue: [ 
							"Failed to find acceptable generation and resting. Try for resting and consumption the same."
							trialLocation := compiler restingLocationAcceptableTo: pa avoiding: siblingClobbered.
							trialLocation == nil
								ifFalse: [ 
									restingLocation := consumptionLocation := trialLocation.
									generationLocation := compiler anyRegisterLocationAcceptableTo: ca ]
								ifTrue: [ 
									"They'll have to be all three different. Since there can always be another stack location created that will be 
									an acceptable resting location, we can safely assume that the others can be registers."
									generationLocation := compiler anyRegisterLocationAcceptableTo: ca.
									restingLocation := compiler restingLocationAvoiding: siblingClobbered.
									consumptionLocation := compiler anyRegisterLocationAcceptableTo: pa ] ] ].
			((generationLocation == nil | consumptionLocation) == nil | restingLocation) == nil
				ifTrue: [ self error: 'Could not assign a location to a variable.' ] ].
	^ {generationLocation.
	restingLocation.
	consumptionLocation}