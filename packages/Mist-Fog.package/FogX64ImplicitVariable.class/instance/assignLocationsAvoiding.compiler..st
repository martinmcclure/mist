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
			| ca pa trialLocation |
			ca := childNode acceptableGenerationLocations.
			pa := parentNode acceptableConsumptionLocationsFor: self.
			trialLocation := compiler locationAcceptableTo: self bothAcceptable avoiding: siblingClobbered.
			trialLocation == nil
				ifFalse: [ generationLocation := restingLocation := consumptionLocation := trialLocation ]
				ifTrue: [ 
					"Failed to find a single location for all three. Try for generation and resting the same."
					trialLocation := compiler locationAcceptableTo: ca avoiding: siblingClobbered.
					trialLocation == nil
						ifFalse: [ 
							generationLocation := restingLocation := trialLocation.
							consumptionLocation := compiler locationAcceptableTo: pa avoiding: (ClobberedSet compiler: compiler) ]
						ifTrue: [ 
							"Failed to find acceptable generation and resting. Try for resting and consumption the same."
							trialLocation := compiler locationAcceptableTo: pa avoiding: siblingClobbered.
							trialLocation == nil
								ifFalse: [ 
									restingLocation := consumptionLocation := trialLocation.
									generationLocation := compiler locationAcceptableTo: ca avoiding: (ClobberedSet compiler: compiler) ]
								ifTrue: [ 
									"They'll have to be all three different"
									generationLocation := compiler locationAcceptableTo: ca avoiding: (ClobberedSet compiler: compiler).
									restingLocation := compiler locationAcceptableTo: FogX64LocationPreferences new avoiding: siblingClobbered.
									consumptionLocation := compiler locationAcceptableTo: pa avoiding: (ClobberedSet compiler: compiler) ] ] ].
			generationLocation == nil
				ifTrue: [ 
					"Child may need this in a specific scratch register. 
					Scratch registers would not have been considered above."
					generationLocation := ca uniqueScratchRegister ].
			consumptionLocation == nil
				ifTrue: [ 
					"Parent may need this in a specific scratch register. 
					Scratch registers would not have been considered above."
					consumptionLocation := pa uniqueScratchRegister ].
			restingLocation == nil
				ifTrue: [ self error: 'Variable assignment failed.' ] ].
	^ {generationLocation.
	restingLocation.
	consumptionLocation}