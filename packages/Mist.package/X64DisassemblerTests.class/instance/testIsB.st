tests
testIsB
	| program disassembly |
	program := FogTests isB.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			''