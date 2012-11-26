private
addChild: childNode
	| var |
	var := FogX64ImplicitVariable parent: self child: childNode.
	childNode parent: var.
	children add: var