fog
identityAnsweringSmallInteger
	^ Fog
		methodWithArguments:
			{'self'.
			'anotherObject'}
		body:
			(Fog
				following: (Fog compare: (Fog fetchArgument: 'self') to: (Fog fetchArgument: 'anotherObject'))
				if: #Z
				then: (Fog intToSmallInt: (Fog intConstant: 1))
				else: (Fog intToSmallInt: (Fog intConstant: 0)))