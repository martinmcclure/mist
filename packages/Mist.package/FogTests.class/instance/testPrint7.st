tests
testPrint7
	| program process |
	program := FogTests print7.
	process := self compileAndRun: program.
	self
		assert:
			(process initialStdOut
				reset;
				upToEnd) = '7'