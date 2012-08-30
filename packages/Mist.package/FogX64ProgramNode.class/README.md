FogX64ProgramNode represents an entire program, to be emitted into an ELF executable. This class may not be used eventually, but is needed for initial Fog tests. The only actual action of this node is to, before executing its children, initialize the base pointer rbp.

Instance Variables:
	steps	<Array> A sequence of Fog nodes that makes up the steps of the program.