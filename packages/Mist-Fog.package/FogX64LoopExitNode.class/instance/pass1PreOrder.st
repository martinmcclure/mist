x64-compiling-pass1
pass1PreOrder
	super pass1PreOrder.
	loopNode := compiler loopLabeled: loopLabel.
	compiler removeLoopLabeled: loopLabel.	"Any other exit node for this loop is an error, so make sure no one else finds it."
	loopNode loopExitNode: self