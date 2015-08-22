test programs
threePlusFour
	"A simple primitive method that adds three and four and answers the SmallInteger result."

	^ Fog
		methodWithArguments: {'self'}
		body: {(Fog intToSmallInt: (Fog intAdd: (Fog intConstant: 3) to: (Fog intConstant: 4)))}