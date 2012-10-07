tests
testEchoMany 
	| program disassembly |
	program := FogTests echoMany.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
''
