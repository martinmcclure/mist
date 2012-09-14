tests
testThreePlusFour
	| program disassembly |
	program := FogTests threePlusFour.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 BD 00 00 50 00 00 00 00 00                mov     rbp,0x500000
000000400082: 49 BF 03 00 00 00 00 00 00 00                mov     r15,0x3
00000040008C: 48 BF 04 00 00 00 00 00 00 00                mov     rdi,0x4
000000400096: 4C 01 FF                                     add     rdi,r15
000000400099: 48 B8 E7 00 00 00 00 00 00 00                mov     rax,0xE7
0000004000A3: 0F 05                                        syscall 
'