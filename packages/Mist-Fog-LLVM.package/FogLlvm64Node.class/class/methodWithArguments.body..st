portable node creation
methodWithArguments: argNames body: body
	"The root of a method with the given arg names (which should include 'self') and the given child nodes."

	^ FogLlvm64MethodNode
		withArguments: argNames children: { body }