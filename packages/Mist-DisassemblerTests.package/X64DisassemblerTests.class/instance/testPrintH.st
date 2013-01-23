tests
testPrintH
	| program disassembly |
	program := FogTests printH.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
00000040007F: 48 83 EC 20                                  sub     rsp,0x20
000000400083: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040008A: 48 C7 C6 78 00 40 00                         mov     rsi,0x400078
000000400091: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400098: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040009F: 0F 05                                        syscall 
0000004000A1: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000A8: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004000AF: 0F 05                                        syscall 
'