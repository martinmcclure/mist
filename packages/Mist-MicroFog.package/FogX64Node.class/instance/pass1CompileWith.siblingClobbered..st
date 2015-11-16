x64-compiling-pass1
pass1CompileWith: aCompiler siblingClobbered: siblingClobbered
	"First pass of the compilation process. The tree is scanned from right to left and variables are assigned to locations.
	There are two things that are really kept track of here: Clobbered locations, and locations of variables. 

	Locations of variables:
	Each implicit variable has three locations assigned to it. Ideally, all three locations are the same. The child node places the value initially in the generation location, then then immediately moves it to the resting location if not the same. The parent node moves the value from the resting location to the consumption location (if not the same) then consumes the value. During the pass 1 compile, the child node assigns the generation and resting locations, then later the parent node assigns the consumption location.
	
	Locations are also used by some nodes as scratch locations. These are probably always registers -- I haven't yet seen a case in which a node needs a scratch location from memory.

	Rules of location assignment:

	Scratch locations are easy. Each node chooses whatever registers it likes for its scratch locations. It is up to the node to not collide its scratch locations with each other, its consumption locations, and its generation location. Most nodes don't have to worry about this at all, since most nodes don't need scratch locations.
	
	Generation locations are easy -- each generation location may be assigned to any location acceptable to the generating node. This is because the lifetime of the generation location is very short -- generation is immediately followed by a move to the resting location, if needed. 
	
	Consumption location are similarly short-lived, and almost as easy. Consumption locations may be any location acceptable to the consuming node. Of course, two variables cannot be consumed by the same node from different locations, so it is the responsibility of the consuming node to only list as acceptable consumption locations for a variable locations that have not already been used. The consumption locations are assigned from right to left, and to ensure no mixups should generate moves from resting locations to consumption locations from right to left.
	
	Resting locations are longer-lived, and therefore have more restrictions. The life of a variable in a resting location extends from the time the variable is generated until the time it is consumed by its parent. Between those two limits, all of the code in the sibling nodes to the right of the generating node executes (including the subtrees beneath those nodes). Therefore, a resting location must avoid any location that is sibling-clobbered.
	
	'Sibling-clobbered' includes any location (register or stack location) which is used witin the siblings to the right of the generating node (and their subtrees) for any of scratch, generation, consumption, or resting locations.

	Location assignment is done in the pass 1 post-order of the child node of the variable. 
	Thus, all my sibling nodes to the right have already been assigned.

	The parent node is responsible for identifying the set of acceptable consumption locations. 
	The child node is responsible for identifying the set of acceptable generation locations. 

	The variable itself is responsible for selecting from among these locations, and for selecting a resting location 
	from among the locations that are not sibling-clobbered. It tries to make as many of the three locations the 
	same as possible. It also consults the compiler, which is responsible for knowing the usual order of 
	register assignment, and for allocating new stack-frame temporary locations.
	
	Declared temporary variables are assigned in their defining node, and have only one location."
	
	
	

	| childClobbered |
	compiler := aCompiler.
	childClobbered := ClobberedSet compiler: compiler.
	self pass1PreOrder.
	self pass1InOrderChildClobbered: childClobbered.
	self pass1PostOrderSiblingClobbered: siblingClobbered childClobbered: childClobbered