An X64CodeStream is effectively an assembler from messages, one per instruction or label, to machine code bytes output on the output stream.

Instance Variables:
	compiler	<FogX64Compiler > 	The compiler that's using me
	output	<LittleEndianByteStream> 	The stream of output bytes
	startAddress	<Integer> 			The machine address that my first output byte will be at when it is executed.
	labels	<IdentityDictionary of Object -> X64CodeLabel> The client identifies each label with an arbitrary unique object.