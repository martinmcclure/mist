x64-compiling-pass1
pass1CompileWith: aCompiler siblingClobbered: siblingClobbered
	"First pass of the compilation process. The tree is scanned from right to left and variables are assigned to locations.
	There are two things that are really kept track of here: Clobbered locations, and locations of variables. 
	Clobbered locations:
	SiblingClobbered is the set of locations used by the siblings to my right (the siblings processed so far) and their children. I cannot assign my output variable to any location that is siblingClobbered, since it would be overwritten while my sibs executed before it could be consumed by my parent node. On entry, siblingClobbered does not include anything clobbered by my parent, or my parent's siblings, etc.
	Locations of variables:
	Each implicit variable has three locations assigned to it. Ideally, all three locations are the same. The child node places the value initially in the generation location, then moves it to the resting location if not the same. The parent node moves the value from the resting location to the consumption location (if not the same) then consumes the value. During the pass 1 compile, the child node assigns the generation and resting locations, then later the parent node assigns the consumption location.
	Declared variables are assigned in their defining node, and have only one location."

	| childClobbered |
	compiler := aCompiler.
	childClobbered := ClobberedSet compiler: compiler.
	self pass1PreOrder.
	self pass1InOrderChildClobbered: childClobbered.
	self pass1PostOrderSiblingClobbered: siblingClobbered childClobbered: childClobbered