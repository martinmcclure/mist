test programs
threePlusFour
	"Add 3 + 4, exit with the result."

	^ Fog
		program:
			{"(Fog breakpoint)."
			(Fog sysCall: #exit_group args: {(Fog intAdd: (Fog intConstant: 3) to: (Fog intConstant: 4))})}	