x64-compiling-pass1
initializeChildVariables
	"If I have any locations for my input variables that I prefer or constrained locations that I must use, set those in my child variables. If my output variable is a dummy and I am side-effect free, set my input variables to also be dummy."

	(parent isDummy and: [ self hasSideEffects not ])
		ifTrue: [ children do: [ :childVar | childVar beDummy ] ]