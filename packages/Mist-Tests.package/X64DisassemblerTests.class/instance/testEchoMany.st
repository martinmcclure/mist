tests
testEchoMany
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceEchoMany.
	self
		assert: disassembly
		equals:
			'000000400230: 48 83 EC 18                                  sub     rsp,0x18
000000400234: 48 89 7C 24 10                               mov     [rsp+0x10],rdi
000000400239: 49 C7 C7 10 00 00 00                         mov     r15,0x10
000000400240: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400247: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
00000040024E: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
000000400255: 49 C7 C2 22 00 00 00                         mov     r10,0x22
00000040025C: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
000000400263: 49 C7 C1 00 00 00 00                         mov     r9,0x0
00000040026A: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400271: 0F 05                                        syscall 
000000400273: 48 8B E8                                     mov     rbp,rax
000000400276: 48 89 6C 24 08                               mov     [rsp+0x8],rbp
00000040027B: 4C 03 FD                                     add     r15,rbp
00000040027E: 4C 89 3C 24                                  mov     [rsp],r15
000000400282: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400289: 48 C7 C6 01 54 00 00                         mov     rsi,0x5401
000000400290: 48 8B 14 24                                  mov     rdx,[rsp]
000000400294: 48 C7 C0 10 00 00 00                         mov     rax,0x10
00000040029B: 0F 05                                        syscall 
00000040029D: 4C 8B 24 24                                  mov     r12,[rsp]
0000004002A1: 49 C7 C5 01 00 00 00                         mov     r13,0x1
0000004002A8: 49 BE FF FF FF FF F5 FF FF FF                mov     r14,0xFFFFFFF5FFFFFFFF
0000004002B2: 4C 8B 3C 24                                  mov     r15,[rsp]
0000004002B6: 48 C7 C5 01 00 00 00                         mov     rbp,0x1
0000004002BD: 49 8B 2C EF                                  mov     rbp,[r15+rbp*8]
0000004002C1: 4C 23 F5                                     and     r14,rbp
0000004002C4: 4F 89 34 EC                                  mov     [r12+r13*8],r14
0000004002C8: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002CF: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
0000004002D6: 48 8B 14 24                                  mov     rdx,[rsp]
0000004002DA: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004002E1: 0F 05                                        syscall 
0000004002E3: 4C 8B 64 24 08                               mov     r12,[rsp+0x8]
0000004002E8: 49 C7 C5 00 00 00 00                         mov     r13,0x0
0000004002EF: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002F6: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
0000004002FB: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400302: 48 C7 C0 00 00 00 00                         mov     rax,0x0
000000400309: 0F 05                                        syscall 
00000040030B: 4C 8B 7C 24 08                               mov     r15,[rsp+0x8]
000000400310: 48 C7 C5 00 00 00 00                         mov     rbp,0x0
000000400317: 4D 33 F6                                     xor     r14,r14
00000040031A: 45 8A 34 2F                                  mov     r14b,[r15+rbp*1]
00000040031E: 48 C7 C5 1B 00 00 00                         mov     rbp,0x1B
000000400325: 4C 3B F5                                     cmp     r14,rbp
000000400328: 75 0B                                        jnz     0x400335
00000040032A: 48 C7 C5 0A 00 00 00                         mov     rbp,0xA
000000400331: EB 23                                        jmp     0x400356
000000400333: EB 1F                                        jmp     0x400354
000000400335: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040033C: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
000000400341: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400348: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040034F: 0F 05                                        syscall 
000000400351: 48 8B E8                                     mov     rbp,rax
000000400354: EB 99                                        jmp     0x4002EF
000000400356: 4C 8B FD                                     mov     r15,rbp
000000400359: 47 88 3C 2C                                  mov     [r12+r13*1],r15b
00000040035D: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
000000400364: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
000000400369: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400370: 48 C7 C0 01 00 00 00                         mov     rax,0x1
000000400377: 0F 05                                        syscall 
000000400379: 4C 8B 24 24                                  mov     r12,[rsp]
00000040037D: 49 C7 C5 01 00 00 00                         mov     r13,0x1
000000400384: 49 BE 00 00 00 00 0A 00 00 00                mov     r14,0xA00000000
00000040038E: 4C 8B 3C 24                                  mov     r15,[rsp]
000000400392: 48 C7 C5 01 00 00 00                         mov     rbp,0x1
000000400399: 49 8B 2C EF                                  mov     rbp,[r15+rbp*8]
00000040039D: 4C 0B F5                                     or      r14,rbp
0000004003A0: 4F 89 34 EC                                  mov     [r12+r13*8],r14
0000004003A4: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004003AB: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
0000004003B2: 48 8B 14 24                                  mov     rdx,[rsp]
0000004003B6: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004003BD: 0F 05                                        syscall 
0000004003BF: 48 8B E8                                     mov     rbp,rax
0000004003C2: 48 C7 C5 00 00 00 00                         mov     rbp,0x0
0000004003C9: 48 8B C5                                     mov     rax,rbp
0000004003CC: 48 83 C4 18                                  add     rsp,0x18
0000004003D0: C3                                           ret     
'