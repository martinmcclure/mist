x64-compiling-pass1
pass1PostOrderSiblingClobbered: sClobbered childClobbered: childClobbered
	super pass1PostOrderSiblingClobbered: sClobbered childClobbered: childClobbered.
	compiler removeLoopLabeled: loopLabel	"I'm no longer in scope, remove me if I'm still there (I'll be there only if I no loopExit node references me)"