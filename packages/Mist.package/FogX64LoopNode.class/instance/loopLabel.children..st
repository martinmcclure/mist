initialize-release
loopLabel: anObject children: nodes
	loopLabel := anObject.
	self children: nodes.
	loopHeadLabel := 'loopHeadLabel' copy.
	loopTailLabel := 'loopTailLabel' copy