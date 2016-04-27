tests
testEchoMany
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceEchoMany.
	self
		assert: disassembly
		equals:
			'000000400230: 48 83 EC 08                                  sub     rsp,0x8
000000400234: 48 89 3C 24                                  mov     [rsp],rdi
000000400238: 48 C7 C3 10 00 00 00                         mov     rbx,0x10
00000040023F: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400246: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
00000040024D: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
000000400254: 49 C7 C2 22 00 00 00                         mov     r10,0x22
00000040025B: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
000000400262: 49 C7 C1 00 00 00 00                         mov     r9,0x0
000000400269: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400270: 0F 05                                        syscall 
000000400272: 4C 8B E0                                     mov     r12,rax
000000400275: 48 03 D8                                     add     rbx,rax
000000400278: 4C 8B EB                                     mov     r13,rbx
00000040027B: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400282: 48 C7 C6 01 54 00 00                         mov     rsi,0x5401
000000400289: 49 8B D5                                     mov     rdx,r13
00000040028C: 48 C7 C0 10 00 00 00                         mov     rax,0x10
000000400293: 0F 05                                        syscall 
000000400295: 4D 8B F5                                     mov     r14,r13
000000400298: 49 C7 C7 01 00 00 00                         mov     r15,0x1
00000040029F: 48 BD FF FF FF FF F5 FF FF FF                mov     rbp,0xFFFFFFF5FFFFFFFF
0000004002A9: 49 8B DD                                     mov     rbx,r13
0000004002AC: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004002B3: 48 8B 04 C3                                  mov     rax,[rbx+rax*8]
0000004002B7: 48 23 E8                                     and     rbp,rax
0000004002BA: 4B 89 2C FE                                  mov     [r14+r15*8],rbp
0000004002BE: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002C5: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
0000004002CC: 49 8B D5                                     mov     rdx,r13
0000004002CF: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004002D6: 0F 05                                        syscall 
0000004002D8: 4D 8B F4                                     mov     r14,r12
0000004002DB: 49 C7 C7 00 00 00 00                         mov     r15,0x0
0000004002E2: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002E9: 49 8B F4                                     mov     rsi,r12
0000004002EC: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004002F3: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004002FA: 0F 05                                        syscall 
0000004002FC: 49 8B DC                                     mov     rbx,r12
0000004002FF: 48 C7 C0 00 00 00 00                         mov     rax,0x0
000000400306: 48 33 ED                                     xor     rbp,rbp
000000400309: 40 8A 2C 03                                  mov     bpl,[rbx+rax*1]
00000040030D: 48 C7 C0 1B 00 00 00                         mov     rax,0x1B
000000400314: 48 3B E8                                     cmp     rbp,rax
000000400317: 75 0B                                        jnz     0x400324
000000400319: 48 C7 C0 0A 00 00 00                         mov     rax,0xA
000000400320: EB 1E                                        jmp     0x400340
000000400322: EB 1A                                        jmp     0x40033E
000000400324: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040032B: 49 8B F4                                     mov     rsi,r12
00000040032E: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400335: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040033C: 0F 05                                        syscall 
00000040033E: EB A2                                        jmp     0x4002E2
000000400340: 48 8B D8                                     mov     rbx,rax
000000400343: 43 88 1C 3E                                  mov     [r14+r15*1],bl
000000400347: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040034E: 49 8B F4                                     mov     rsi,r12
000000400351: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400358: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040035F: 0F 05                                        syscall 
000000400361: 4D 8B F5                                     mov     r14,r13
000000400364: 49 C7 C7 01 00 00 00                         mov     r15,0x1
00000040036B: 48 BD 00 00 00 00 0A 00 00 00                mov     rbp,0xA00000000
000000400375: 49 8B DD                                     mov     rbx,r13
000000400378: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040037F: 48 8B 04 C3                                  mov     rax,[rbx+rax*8]
000000400383: 48 0B E8                                     or      rbp,rax
000000400386: 4B 89 2C FE                                  mov     [r14+r15*8],rbp
00000040038A: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400391: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
000000400398: 49 8B D5                                     mov     rdx,r13
00000040039B: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004003A2: 0F 05                                        syscall 
0000004003A4: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004003AB: 48 83 C4 08                                  add     rsp,0x8
0000004003AF: C3                                           ret     
'