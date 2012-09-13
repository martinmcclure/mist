tests
threePlusFour
	"FogTests new threePlusFour"

	| program |
	program := Fog
		program:
			{"(Fog breakpoint)."
			(Fog sysCall: #exit_group args: {(Fog intAdd: (Fog intConstant: 3) to: (Fog intConstant: 4))})}.
	^ self compile: program andWriteTo: 'threePlusFour'