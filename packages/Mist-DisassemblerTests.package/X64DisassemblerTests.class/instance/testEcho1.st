tests
testEcho1
	| program disassembly |
	program := FogTests echo1.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C5 00 00 50 00                         mov     rbp,0x500000
00000040007F: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400086: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
00000040008D: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
000000400094: 49 C7 C2 22 00 00 00                         mov     r10,0x22
00000040009B: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
0000004000A2: 49 C7 C1 00 00 00 00                         mov     r9,0x0
0000004000A9: 48 C7 C0 09 00 00 00                         mov     rax,0x9
0000004000B0: 0F 05                                        syscall 
0000004000B2: 4C 8B F8                                     mov     r15,rax
0000004000B5: 4D 8B F7                                     mov     r14,r15
0000004000B8: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000BF: 49 8B F6                                     mov     rsi,r14
0000004000C2: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004000C9: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004000D0: 0F 05                                        syscall 
0000004000D2: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
0000004000D9: 49 8B F6                                     mov     rsi,r14
0000004000DC: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004000E3: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004000EA: 0F 05                                        syscall 
0000004000EC: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000F3: 48 C7 C0 03 00 00 00                         mov     rax,0x3
0000004000FA: 0F 05                                        syscall 
0000004000FC: 48 8B F8                                     mov     rdi,rax
0000004000FF: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
000000400106: 0F 05                                        syscall 
'