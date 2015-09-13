A FogX64ImplicitVariable connects each parent and child in the tree of a Fog method. In most cases, it represents an unnamed variable that transmits a value that is the result of the child's execution to an input of the parent. If the parent does not wish input from this child, it is a dummy variable. It collaborates with the nodes and the compiler to assign a location or locations to this variable.

Instance Variables:
	parentNode	<FogX64Node> The consumer of the value of this variable
	childNode	<FogX64Node> The producer of the value of this variable
	isDummy	<Boolean> True if the parent node will not use input from this child.

	parentAcceptable	<FogX64LocationPreferences> What consumption locations are acceptable to the parent
	childAcceptable	<FogX64LocationPreferences> What locations are possible for the child to produce a value to
	generationLocation 	<FogX64Location> The location where the child node will initially put the value
	restingLocation 		<FogX64Location> The location where the variable "rests" between being generated and being consumed
	consumptionLocation 	<FogX64Location> The location from which the parent node will ultimately consume the variable
		
GenerationLocation, restingLocation, and consumptionLocation are three separate locations only in the worst case. To minimize mov instructions, these locations are all the same location whenever possible, or failing that two are the same. One case where they must be three separate locations would be when all registers are clobbered between generation and consumption, but both the producing child node and the consuming parent node require register locations. In this case, some scratch register would be used for each of generation and consumption locations, and the resting location would be in memory on the stack.