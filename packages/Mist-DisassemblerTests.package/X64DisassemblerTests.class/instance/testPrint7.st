tests
testPrint7
	| program disassembly |
	program := FogTests print7.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 BD 00 00 50 00 00 00 00 00                mov     rbp,0x500000
000000400082: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
00000040008C: 48 BE 00 10 00 00 00 00 00 00                mov     rsi,0x1000
000000400096: 48 BA 03 00 00 00 00 00 00 00                mov     rdx,0x3
0000004000A0: 49 BA 22 00 00 00 00 00 00 00                mov     r10,0x22
0000004000AA: 49 B8 FF FF FF FF FF FF FF FF                mov     r8,0xFFFFFFFFFFFFFFFF
0000004000B4: 49 B9 00 00 00 00 00 00 00 00                mov     r9,0x0
0000004000BE: 48 B8 09 00 00 00 00 00 00 00                mov     rax,0x9
0000004000C8: 0F 05                                        syscall 
0000004000CA: 49 89 C7                                     mov     r15,rax
0000004000CD: 4D 89 FD                                     mov     r13,r15
0000004000D0: 4D 89 EC                                     mov     r12,r13
0000004000D3: 49 BE 00 00 00 00 00 00 00 00                mov     r14,0x0
0000004000DD: 49 BF 37 00 00 00 00 00 00 00                mov     r15,0x37
0000004000E7: 47 88 3C 34                                  mov     [r12+r14*1],r15b
0000004000EB: 48 BF 01 00 00 00 00 00 00 00                mov     rdi,0x1
0000004000F5: 4C 89 EE                                     mov     rsi,r13
0000004000F8: 48 BA 01 00 00 00 00 00 00 00                mov     rdx,0x1
000000400102: 48 B8 01 00 00 00 00 00 00 00                mov     rax,0x1
00000040010C: 0F 05                                        syscall 
00000040010E: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
000000400118: 48 B8 E7 00 00 00 00 00 00 00                mov     rax,0xE7
000000400122: 0F 05                                        syscall 
'