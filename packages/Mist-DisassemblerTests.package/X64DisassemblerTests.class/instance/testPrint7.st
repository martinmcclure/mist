tests
testPrint7
	| program disassembly |
	program := FogTests print7.
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
0000004000B5: 4D 8B EF                                     mov     r13,r15
0000004000B8: 4D 8B E5                                     mov     r12,r13
0000004000BB: 49 C7 C6 00 00 00 00                         mov     r14,0x0
0000004000C2: 49 C7 C7 37 00 00 00                         mov     r15,0x37
0000004000C9: 47 88 3C 34                                  mov     [r12+r14*1],r15b
0000004000CD: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
0000004000D4: 49 8B F5                                     mov     rsi,r13
0000004000D7: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004000DE: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004000E5: 0F 05                                        syscall 
0000004000E7: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000EE: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004000F5: 0F 05                                        syscall 
'