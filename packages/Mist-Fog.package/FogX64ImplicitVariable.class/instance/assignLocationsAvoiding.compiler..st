assigning
assignLocationsAvoiding: siblingClobbered compiler: compiler
	"Assign all three of my locations, trying to keep as many as possible the same, within these constraints:
	* The generation location must be acceptable to my child node.
	* The resting location must not be siblingClobbered.
	* The consumption location must be acceptable to my parent node.
	
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
							consumptionLocation := compiler restingLocationAcceptableTo: pa avoiding: (ClobberedSet compiler: compiler) ]
						ifTrue: [ 
							"Failed to find acceptable generation and resting. Try for resting and consumption the same."
							trialLocation := compiler restingLocationAcceptableTo: pa avoiding: siblingClobbered.
							trialLocation == nil
								ifFalse: [ 
									restingLocation := consumptionLocation := trialLocation.
									generationLocation := compiler restingLocationAcceptableTo: ca avoiding: (ClobberedSet compiler: compiler) ]
								ifTrue: [ 
									"They'll have to be all three different. Since there can always be another stack location created that will be 
									an acceptable resting location, we can safely assume that the others must be registers. And since it won't be
									a resting location, we're free to consider the scratch registers."
									generationLocation := compiler anyRegisterLocationAcceptableTo: ca.
									restingLocation := compiler restingLocationAvoiding: siblingClobbered.
									consumptionLocation := compiler anyRegisterLocationAcceptableTo: pa ] ] ].
			((generationLocation == nil | consumptionLocation) == nil | restingLocation) == nil
				ifTrue: [ self error: 'Variable assignment failed.' ] ].
	^ {generationLocation.
	restingLocation.
	consumptionLocation}