test programs
printH
	"Print $H to standard out"

	^ Fog
		program:
			{"Fog breakpoint."
			(Fog
				sysCall: #write
				args:
					{(Fog intConstant: 1).	"fd"
					(Fog intConstant: 16r400078).	"bufPointer"
					(Fog intConstant: 1)	"size"}).
			(Fog sysCall: #exit_group args: {(Fog intConstant: 0)})}	