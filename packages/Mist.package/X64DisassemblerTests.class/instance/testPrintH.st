tests
testPrintH
	| program disassembly |
	program := FogTests printH.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 BD 00 00 50 00 00 00 00 00                mov     rbp,0x500000
000000400082: 48 BF 01 00 00 00 00 00 00 00                mov     rdi,0x1
00000040008C: 48 BE 78 00 40 00 00 00 00 00                mov     rsi,0x400078
000000400096: 48 BA 01 00 00 00 00 00 00 00                mov     rdx,0x1
0000004000A0: 48 B8 01 00 00 00 00 00 00 00                mov     rax,0x1
0000004000AA: 0F 05                                        syscall 
0000004000AC: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
0000004000B6: 48 B8 E7 00 00 00 00 00 00 00                mov     rax,0xE7
0000004000C0: 0F 05                                        syscall 
'