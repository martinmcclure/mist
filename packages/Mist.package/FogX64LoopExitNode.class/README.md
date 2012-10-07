A FogX64LoopExitNode references a Loop node through its unique label. It has one child node. When executed, it evaluates that child, then immediately exits from the loop node, giving the result of its child as the result of the loop. Currently there may only be one LoopExitNode per Loop node (two LoopExitNodes may not have the identical loopLabel).

Instance Variables:
	loopLabel	<Object> The unique label of a loop node that is one of my ancestors -- known at creation time.
	loopNode 	<FogX64LoopNode> The node so labeled -- discovered at pass 1 compile time.
		
	

