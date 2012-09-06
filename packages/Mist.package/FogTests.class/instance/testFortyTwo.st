tests
testFortyTwo
	"FogTests new fortyTwo"

	| program process |
	program := Fog
		program:
			{"(Fog breakpoint)."
			(Fog sysCall: #exit_group args: {(Fog intConstant: 42)})}.
	process := self compileAndRun: program.