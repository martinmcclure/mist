initialize-release
loopLabel: anObject children: nodes
	loopLabel := anObject.
	self children: nodes.
	loopHeadLabel := 'loopHeadLabel' copy.
	loopTailLabel := 'loopTailLabel' copy.
	loopExitNode := #infinite. "If an exit node for me turns up, it will be stored here. If no exit node, I'm infinite."