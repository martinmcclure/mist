tests
testPrintH
	| program |
	program := FogTests printH.
	self compileAndRun: program withInput: '' expectingOutput: 'H'