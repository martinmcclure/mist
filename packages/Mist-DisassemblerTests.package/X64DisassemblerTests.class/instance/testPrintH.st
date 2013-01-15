tests
testPrintH
	| program disassembly |
	program := FogTests printH.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C5 00 00 50 00                         mov     rbp,0x500000
00000040007F: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
000000400086: 48 C7 C6 78 00 40 00                         mov     rsi,0x400078
00000040008D: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400094: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040009B: 0F 05                                        syscall 
00000040009D: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000A4: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004000AB: 0F 05                                        syscall 
'