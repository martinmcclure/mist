tests
testFortyTwo
	| program process |
	filename := 'testFortyTwo'.
	program := FogTests fortyTwo.
	process := self compileAndRun: program.
	self assert: process exitStatus \\ 255 = 42