x64-compiling-pass1
pass1CompileWith: aCompiler siblingClobbered: incomingSiblingClobbered
	"Loops are either infinite, in which case my siblingClobbered don't really matter because my siblings are all dead code, or...
	there is a loop exit node for me, and it is the one that needs my siblingClobbered, since it will be producing the result.
	At entry to this node, I don't yet know whether I have an exit node, so just save the clobbered for its use when and if it is found."
	siblingClobbered := incomingSiblingClobbered.
	super pass1CompileWith: aCompiler siblingClobbered: incomingSiblingClobbered
