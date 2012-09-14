tests
testEcho1
	| program disassembly |
	program := FogTests echo1.
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
0000004000CD: 4D 89 FE                                     mov     r14,r15
0000004000D0: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
0000004000DA: 4C 89 F6                                     mov     rsi,r14
0000004000DD: 48 BA 01 00 00 00 00 00 00 00                mov     rdx,0x1
0000004000E7: 48 B8 00 00 00 00 00 00 00 00                mov     rax,0x0
0000004000F1: 0F 05                                        syscall 
0000004000F3: 48 BF 01 00 00 00 00 00 00 00                mov     rdi,0x1
0000004000FD: 4C 89 F6                                     mov     rsi,r14
000000400100: 48 BA 01 00 00 00 00 00 00 00                mov     rdx,0x1
00000040010A: 48 B8 01 00 00 00 00 00 00 00                mov     rax,0x1
000000400114: 0F 05                                        syscall 
000000400116: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
000000400120: 48 B8 03 00 00 00 00 00 00 00                mov     rax,0x3
00000040012A: 0F 05                                        syscall 
00000040012C: 48 89 C7                                     mov     rdi,rax
00000040012F: 48 B8 E7 00 00 00 00 00 00 00                mov     rax,0xE7
000000400139: 0F 05                                        syscall 
'