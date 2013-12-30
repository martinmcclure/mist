x64-compiling-pass1
pass1PostOrderSiblingClobbered: siblingClobbered childClobbered: childClobbered
	childClobbered addAll: (parent assignLocationsAvoiding: siblingClobbered compiler: compiler).
	self
		assignDeclaredVariablesAvoiding: childClobbered;
		addOwnClobberedTo: siblingClobbered.
	siblingClobbered addAll: childClobbered