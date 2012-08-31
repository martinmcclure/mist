tests
fortyTwo
	"FogTests new fortyTwo"

	| program |
	program := Fog
		program:
			{"(Fog breakpoint)."
			(Fog sysCall: #exit_group args: {(Fog intConstant: 42)})}.
	^ self compile: program andWriteTo: 'forty-two-compiled'