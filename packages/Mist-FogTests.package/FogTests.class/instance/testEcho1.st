tests
testEcho1
	| program |
	program := FogTests echo1.
	self compileAndRun: program withInput: 'a' expectingOutput: 'a'