x64-compiling-pass1
pass1InOrderChildClobbered: childClobbered
	"Since I consume the value of child 1 before 2 or 3 execute, and only one of 2 or 3 execute,
	none of my children need consider any locations siblingClobbered. However, all locations used
	by any of my children need to be considered clobbered as far as *my* siblings are concerned, 
	so must put the union of those locations in the childClobbered passed to me."

	children size to: 1 by: -1 do: [ :i | 
		| childVar thisChildClobbered |
		childVar := children at: i.
		thisChildClobbered := ClobberedSet compiler: compiler.
		childVar child pass1CompileWith: compiler siblingClobbered: thisChildClobbered.
		childClobbered addAll: thisChildClobbered ]