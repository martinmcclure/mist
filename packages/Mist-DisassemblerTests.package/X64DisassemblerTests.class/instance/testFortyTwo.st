tests
testFortyTwo
	| program disassembly |
	program := FogTests fortyTwo.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C5 00 00 50 00                         mov     rbp,0x500000
00000040007F: 48 C7 C7 2A 00 00 00                         mov     rdi,0x2A
000000400086: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
00000040008D: 0F 05                                        syscall 
'