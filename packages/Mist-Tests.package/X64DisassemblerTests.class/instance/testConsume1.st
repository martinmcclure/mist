tests
testConsume1
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourceConsume1.
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
0000004002E3: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002EA: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
0000004002EF: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004002F6: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004002FD: 0F 05                                        syscall 
0000004002FF: 4C 8B 24 24                                  mov     r12,[rsp]
000000400303: 49 C7 C5 01 00 00 00                         mov     r13,0x1
00000040030A: 49 BE 00 00 00 00 0A 00 00 00                mov     r14,0xA00000000
000000400314: 4C 8B 3C 24                                  mov     r15,[rsp]
000000400318: 48 C7 C5 01 00 00 00                         mov     rbp,0x1
00000040031F: 49 8B 2C EF                                  mov     rbp,[r15+rbp*8]
000000400323: 4C 0B F5                                     or      r14,rbp
000000400326: 4F 89 34 EC                                  mov     [r12+r13*8],r14
00000040032A: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400331: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
000000400338: 48 8B 14 24                                  mov     rdx,[rsp]
00000040033C: 48 C7 C0 10 00 00 00                         mov     rax,0x10
000000400343: 0F 05                                        syscall 
000000400345: 4C 8B 7C 24 08                               mov     r15,[rsp+0x8]
00000040034A: 48 C7 C5 00 00 00 00                         mov     rbp,0x0
000000400351: 4D 33 F6                                     xor     r14,r14
000000400354: 45 8A 34 2F                                  mov     r14b,[r15+rbp*1]
000000400358: 49 D1 E6                                     shl     r14,0x1
00000040035B: 49 83 C6 01                                  add     r14,0x1
00000040035F: 49 8B C6                                     mov     rax,r14
000000400362: 48 83 C4 18                                  add     rsp,0x18
000000400366: C3                                           ret     
'