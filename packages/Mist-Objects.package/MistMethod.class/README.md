MistMethod -- defines the response to a Mist message.

Instance Variables:
	source	<String>
	fog	<FogNode>
	machineCode	<ByteArray>
	machineCodeSize <Integer> The size that machineCode is (or will be)
		
In a Mist image, the machine code is not a separate byte array, but part of the method object. Since Pharo does not support objects containing both pointers and bytes, here they must be separate.

Steps in compiling a Mist method:
1) A MistCompiler is asked to compile a source code string
2) The compiler compiles the source to a tree of Fog nodes
3) The Fog tree is compiled to machine code, with references to addresses outside the method still unresolved 
4) The size of the machine code is now known, so a MistMethod of the appropriate size can be allocated by the object manager.
5) The address of the method is now known, so the references can now be resolved.

The method is now complete.