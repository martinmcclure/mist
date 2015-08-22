test programs
fortyTwo
	"A very simple Mist method, that just answers the SmallInteger 42.
	For now, Mist assumes all methods are primitives -- once there is a parser there will be a pragma or 
	something to indicate a primitive. A Mist primitive executes its source code at compile time, and
	the result should be a Fog node that is the root of the primitive method."

	^ Fog methodWithArguments: {'self'} body: {(Fog intToSmallInt: (Fog intConstant: 42))}