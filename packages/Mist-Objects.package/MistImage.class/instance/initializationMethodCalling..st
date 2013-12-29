private
initializationMethodCalling: aMethod
	"Compile and answer an initialization method which calls the given startup method."

	| targetAddress fog |
	targetAddress := aMethod entryAddress.
	fog := Fog
		simpleRoot:
			{(Fog initializeStackPointerTo: self initialStackPointerAddress).
			(Fog
				sysCall: #exit_group
				args: {(Fog smallIntToInt: (Fog call: targetAddress arguments: {(Fog intConstant: aMethod logicalAddress)}))})}.
	^ self compileFog: fog