x64-compiling-pass1
initializeChildVariables
	"I don't use any of the inputs of my children. If I terminate, it's through use of a LoopExitNode."

	children do: [ :childVar | childVar beDummy ]