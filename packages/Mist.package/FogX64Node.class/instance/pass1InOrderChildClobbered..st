x64-compiling-pass1
pass1InOrderChildClobbered: childClobbered
	children size to: 1 by: -1 do: [ :i | 
		| childVar |
		childVar := children at: i.
		childVar child pass1CompileWith: compiler siblingClobbered: childClobbered.
		self assignInputVariableNumber: i ]