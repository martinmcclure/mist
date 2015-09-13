A FogX64VariableScopeNode declares some number of variables having scope limited to the subtree of that node. Each variable must have a name unique within that node. VariableScopeNode is concrete, but can also have subclasses. The result of a FogVariableScopeNode is the result of its rightmost child node.

Instance Variables:
	vDict	<Dictionary> Maps variable names to DeclaredVariables