FogX64VariableAccessNode is an abstract superclass for nodes that fetch from or store to declared variables.

Instance Variables:
	varName	<String> The name of the variable I access
	variable	<FogX64DeclaredVariable> The variable itself, filled in during pass1 compile.