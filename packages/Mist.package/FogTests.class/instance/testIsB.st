tests
testIsB
	| program |
	program := FogTests isB.
	self
		compileAndRun: program withInput: 'a' expectingOutput: 'F';
		compileAndRun: program withInput: 'b' expectingOutput: 'F';
		compileAndRun: program withInput: '~' expectingOutput: 'F';
		compileAndRun: program withInput: 'B' expectingOutput: 'T'