x64-compiling-pass1
initializeChildVariables
	"I don't use any of my children's results, except for the last child."

	1 to: children size - 1 do: [ :i | (children at: i) beDummy ]