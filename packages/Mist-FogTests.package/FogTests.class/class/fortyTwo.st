test programs
fortyTwo
	"Do nothing, exit with code 42."

	^ Fog
		program:
			{"(Fog breakpoint)."
			(Fog sysCall: #exit_group args: {(Fog intConstant: 42)})}