tests
testEchoMany
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourceEchoMany.
	self
		assert: disassembly
		equals:
			'000000400230: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
000000400237: 48 83 EC 20                                  sub     rsp,0x20
00000040023B: 49 C7 C7 10 00 00 00                         mov     r15,0x10
000000400242: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400249: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400250: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
000000400257: 49 C7 C2 22 00 00 00                         mov     r10,0x22
00000040025E: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
000000400265: 49 C7 C1 00 00 00 00                         mov     r9,0x0
00000040026C: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400273: 0F 05                                        syscall 
000000400275: 48 8B E8                                     mov     rbp,rax
000000400278: 48 89 6C 24 08                               mov     [rsp+0x8],rbp
00000040027D: 49 03 EF                                     add     rbp,r15
000000400280: 48 89 2C 24                                  mov     [rsp],rbp
000000400284: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040028B: 48 C7 C6 01 54 00 00                         mov     rsi,0x5401
000000400292: 48 8B 14 24                                  mov     rdx,[rsp]
000000400296: 48 C7 C0 10 00 00 00                         mov     rax,0x10
00000040029D: 0F 05                                        syscall 
00000040029F: 4C 8B 24 24                                  mov     r12,[rsp]
0000004002A3: 49 C7 C5 01 00 00 00                         mov     r13,0x1
0000004002AA: 49 BE FF FF FF FF F5 FF FF FF                mov     r14,0xFFFFFFF5FFFFFFFF
0000004002B4: 4C 8B 3C 24                                  mov     r15,[rsp]
0000004002B8: 48 C7 C5 01 00 00 00                         mov     rbp,0x1
0000004002BF: 49 8B 2C EF                                  mov     rbp,[r15+rbp*8]
0000004002C3: 49 23 EE                                     and     rbp,r14
0000004002C6: 4B 89 2C EC                                  mov     [r12+r13*8],rbp
0000004002CA: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002D1: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
0000004002D8: 48 8B 14 24                                  mov     rdx,[rsp]
0000004002DC: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004002E3: 0F 05                                        syscall 
0000004002E5: 4C 8B 64 24 08                               mov     r12,[rsp+0x8]
0000004002EA: 49 C7 C5 00 00 00 00                         mov     r13,0x0
0000004002F1: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002F8: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
0000004002FD: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400304: 48 C7 C0 00 00 00 00                         mov     rax,0x0
00000040030B: 0F 05                                        syscall 
00000040030D: 4C 8B 7C 24 08                               mov     r15,[rsp+0x8]
000000400312: 48 C7 C5 00 00 00 00                         mov     rbp,0x0
000000400319: 4D 33 F6                                     xor     r14,r14
00000040031C: 45 8A 34 2F                                  mov     r14b,[r15+rbp*1]
000000400320: 48 C7 C5 1B 00 00 00                         mov     rbp,0x1B
000000400327: 49 3B EE                                     cmp     rbp,r14
00000040032A: 75 0B                                        jnz     0x400337
00000040032C: 48 C7 C5 0A 00 00 00                         mov     rbp,0xA
000000400333: EB 23                                        jmp     0x400358
000000400335: EB 1F                                        jmp     0x400356
000000400337: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040033E: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
000000400343: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
00000040034A: 48 C7 C0 01 00 00 00                         mov     rax,0x1
000000400351: 0F 05                                        syscall 
000000400353: 48 8B E8                                     mov     rbp,rax
000000400356: EB 99                                        jmp     0x4002F1
000000400358: 43 88 2C 2C                                  mov     [r12+r13*1],bpl
00000040035C: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
000000400363: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
000000400368: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
00000040036F: 48 C7 C0 01 00 00 00                         mov     rax,0x1
000000400376: 0F 05                                        syscall 
000000400378: 4C 8B 24 24                                  mov     r12,[rsp]
00000040037C: 49 C7 C5 01 00 00 00                         mov     r13,0x1
000000400383: 49 BE 00 00 00 00 0A 00 00 00                mov     r14,0xA00000000
00000040038D: 4C 8B 3C 24                                  mov     r15,[rsp]
000000400391: 48 C7 C5 01 00 00 00                         mov     rbp,0x1
000000400398: 49 8B 2C EF                                  mov     rbp,[r15+rbp*8]
00000040039C: 49 0B EE                                     or      rbp,r14
00000040039F: 4B 89 2C EC                                  mov     [r12+r13*8],rbp
0000004003A3: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004003AA: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
0000004003B1: 48 8B 14 24                                  mov     rdx,[rsp]
0000004003B5: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004003BC: 0F 05                                        syscall 
0000004003BE: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004003C5: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004003CC: 0F 05                                        syscall 
'