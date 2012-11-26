x64-compiling-pass1
pass1PostOrderSiblingClobbered: siblingClobbered childClobbered: childClobbered
	self
		assignOutputVariableAvoiding: siblingClobbered;
		assignDeclaredVariablesAvoiding: childClobbered;
		addOwnClobberedTo: siblingClobbered.
	siblingClobbered addAll: childClobbered