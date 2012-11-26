FogX64LoopNode: I implement a loop. I have any number of subnodes (steps) that are executed in order, then I execute a jump back to the first step. I loop infinitely unless one of my descendants is a LoopExitNode referencing my loopLabel. Currently, only a single ExitLoopNode per LoopNode is supported. 

Instance Variables:
	loopLabel	<Object> The identity of this object may be used by a LoopExitNode to identify me (the node) 
	loopHeadLabel	<Object> A unique (by identity) code label, pointing to the first instruction of my first child.
	loopTailLabel	<Object> A unique (by identity) code label, pointing to the first instruction after my last child.