tests
testFortyTwo
	| program process |
	program := FogTests fortyTwo.
	process := self compileAndRun: program.
	self assert: process exitStatus \\ 255 = 42