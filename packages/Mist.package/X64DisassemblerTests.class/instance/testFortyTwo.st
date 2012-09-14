tests
testFortyTwo
	| program disassembly |
	program := FogTests fortyTwo.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 BD 00 00 50 00 00 00 00 00                mov     rbp,0x500000
000000400082: 48 BF 2A 00 00 00 00 00 00 00                mov     rdi,0x2A
00000040008C: 48 B8 E7 00 00 00 00 00 00 00                mov     rax,0xE7
000000400096: 0F 05                                        syscall 
'