tests
testThreePlusFour
	| program process |
	program := FogTests threePlusFour.
	process := self compileAndRun: program.
	self assert: process exitStatus \\ 255 = 7