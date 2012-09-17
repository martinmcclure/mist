tests
testPrint7
	| program |
	program := FogTests print7.
	self compileAndRun: program withInput: '' expectingOutput: '7'