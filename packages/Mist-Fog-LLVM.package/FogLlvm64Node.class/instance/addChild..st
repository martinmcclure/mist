as yet unclassified
addChild: childNode
	| var |
	var := FogX64ImplicitVariable parent: self child: childNode indexInParent: children size + 1.
	childNode parent: var.
	children add: var