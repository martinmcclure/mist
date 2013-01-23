tests
testEcho1
	| program disassembly |
	program := FogTests echo1.
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
0000004000B6: 4C 8B F8                                     mov     r15,rax
0000004000B9: 4D 8B F7                                     mov     r14,r15
0000004000BC: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000C3: 49 8B F6                                     mov     rsi,r14
0000004000C6: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004000CD: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004000D4: 0F 05                                        syscall 
0000004000D6: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
0000004000DD: 49 8B F6                                     mov     rsi,r14
0000004000E0: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004000E7: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004000EE: 0F 05                                        syscall 
0000004000F0: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000F7: 48 C7 C0 03 00 00 00                         mov     rax,0x3
0000004000FE: 0F 05                                        syscall 
000000400100: 48 8B F8                                     mov     rdi,rax
000000400103: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
00000040010A: 0F 05                                        syscall 
'