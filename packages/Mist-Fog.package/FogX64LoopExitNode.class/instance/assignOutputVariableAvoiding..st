x64-compiling-pass1
assignOutputVariableAvoiding: siblingClobbered
	"Since I jump straight to the loop tail label in defiance of the normal tree traversal order, 
	the siblingClobbered I'm passed have no bearing on the situation. What I want to avoid is my loop's siblingClobbered."

	super assignOutputVariableAvoiding: loopNode siblingClobbered