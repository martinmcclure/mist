x64-compiling-pass1
initializeChildVariables
	"I don't use any of my children's results, except for the last child, and only that if I return a result."

	| lastChildVar |
	super initializeChildVariables.
	lastChildVar := children at: children size.	"Method nodes always have at least one child"
	isReturnedFrom
		ifFalse: [ lastChildVar beDummy ]