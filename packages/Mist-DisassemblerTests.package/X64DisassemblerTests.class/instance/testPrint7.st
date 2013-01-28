tests
testPrint7
	| program disassembly |
	program := FogTests print7.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
00000040007F: 48 83 EC 20                                  sub     rsp,0x20
000000400083: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040008A: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400091: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
000000400098: 49 C7 C2 22 00 00 00                         mov     r10,0x22
00000040009F: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
0000004000A6: 49 C7 C1 00 00 00 00                         mov     r9,0x0
0000004000AD: 48 C7 C0 09 00 00 00                         mov     rax,0x9
0000004000B4: 0F 05                                        syscall 
0000004000B6: 48 8B E8                                     mov     rbp,rax
0000004000B9: 4C 8B ED                                     mov     r13,rbp
0000004000BC: 4D 8B F5                                     mov     r14,r13
0000004000BF: 49 C7 C7 00 00 00 00                         mov     r15,0x0
0000004000C6: 48 C7 C5 37 00 00 00                         mov     rbp,0x37
0000004000CD: 43 88 2C 3E                                  mov     [r14+r15*1],bpl
0000004000D1: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
0000004000D8: 49 8B F5                                     mov     rsi,r13
0000004000DB: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004000E2: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004000E9: 0F 05                                        syscall 
0000004000EB: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000F2: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004000F9: 0F 05                                        syscall 
'