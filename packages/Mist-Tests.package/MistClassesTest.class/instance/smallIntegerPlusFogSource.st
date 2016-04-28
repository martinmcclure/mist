support
smallIntegerPlusFogSource
	^ 'Fog
		methodWithArguments:
			{''self''.
			''aNumber''}
		body:
			{(Fog
				intToSmallInt:
					(Fog intAdd: (Fog smallIntToInt: (Fog fetchVariable: ''self'')) to: (Fog smallIntToInt: (Fog fetchVariable: ''aNumber''))))}.'