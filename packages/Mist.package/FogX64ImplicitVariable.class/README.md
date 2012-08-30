A FogX64ImplicitVariable connects each parent and child in the tree of a Fog method. In most cases, it represents an unnamed variable that transmits a value that is the result of the child's execution to an input of the parent. If the parent does not wish its input, it is a dummy variable. It collaborates with the nodes and the compiler to assign a location or locations to this variable.

Instance Variables:
	parentNode	<FogX64Node> The consumer of the value of this variable
	childNode	<FogX64Node> The producer of the value of this variable
	isDeclared <Boolean> True if the scope of the variable is greater than this parent-child relationship
	isDummy	<Boolean> True if the parent node will not use input from this child.
	parentConstraint	<FogX64Location> If the parent *must* have input from this child in specific location, a specific location. Otherwise anyLocation
	parentDesired	<FogX64Location> If the parent would *like* to have input from this child in a specific location, a specific location. Otherwise anyLocation.
	childConstraint	<FogX64Location> If the child *must* produce its output in a specific location, a specific location. Otherwise anyLocation