x64-compiling-pass1
pass1PostOrderSiblingClobbered: siblingClobbered childClobbered: childClobbered
	super pass1PostOrderSiblingClobbered: siblingClobbered childClobbered: childClobbered.
	"I'm no longer in scope, remove me if I'm still there (I'll be there only if I no loopExit node references me)"
	compiler removeLoopLabeled: loopLabel