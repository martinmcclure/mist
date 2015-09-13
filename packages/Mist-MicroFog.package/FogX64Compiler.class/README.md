FogX64Compiler keeps track of things while compiling Fog to native machine code.

Instance Variables:
	assignableRegisters	<Collection of Locations, the ones for general-purpose integer registers>
	codeStream			<X64CodeStream> Where the native code goes in pass 2.
	loopsInScope 			<IdentityDictionary> Maps loop labels to loop nodes. Only used during pass 1, contains loops 
												currently in scope for which no exit node has yet been encountered.
	stackTempsUsed		<Integer> So we'll know how many to reserve on entry to a method
	scopeStack 			<FogScopeStack> Keeps track of what named variables are in scope during pass 1.