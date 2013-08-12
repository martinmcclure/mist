test method source
sourceFortyTwo 
	"The source of a very simple Mist initialization method.
	For now, Mist assumes all methods are primitives -- once there is a parser there will be a pragma or 
	something to indicate a primitive. A Mist primitive executes its source code at compile time, and
	the result should be a Fog node that is the root of the primitive method."
	
	^'
	^ Fog
		program:
			{"(Fog breakpoint)."
			(Fog sysCall: #exit_group args: {(Fog intConstant: 42)})}'