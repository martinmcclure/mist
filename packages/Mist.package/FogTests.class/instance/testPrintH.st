tests
testPrintH
	| program process |
	program := FogTests printH.
	process := self compileAndRun: program.
	self
		assert:
			(process initialStdOut
				reset;
				upToEnd) = 'H'