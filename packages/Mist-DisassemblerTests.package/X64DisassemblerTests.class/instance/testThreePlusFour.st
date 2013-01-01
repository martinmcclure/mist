tests
testThreePlusFour
	| program disassembly |
	program := FogTests threePlusFour.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C5 00 00 50 00                         mov     rbp,0x500000
00000040007F: 49 C7 C7 03 00 00 00                         mov     r15,0x3
000000400086: 48 C7 C7 04 00 00 00                         mov     rdi,0x4
00000040008D: 49 03 FF                                     add     rdi,r15
000000400090: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
000000400097: 0F 05                                        syscall 
'