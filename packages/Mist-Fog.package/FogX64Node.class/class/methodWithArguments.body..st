portable-instance creation
methodWithArguments: argNames body: children
	"The root of a method with the given arg names (which should include 'self') and the given child nodes."

	^ FogX64MethodNode
		withArguments: argNames children: children