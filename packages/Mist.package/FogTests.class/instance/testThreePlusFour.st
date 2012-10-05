tests
testThreePlusFour
	| program process |
	filename := 'testThreePlusFour'.
	program := FogTests threePlusFour.
	process := self compileAndRun: program.
	self assert: process exitStatus \\ 255 = 7