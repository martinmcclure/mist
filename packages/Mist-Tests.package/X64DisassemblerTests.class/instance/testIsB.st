tests
testIsB
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceIsB.
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
0000004002D8: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004002DF: 49 8B F4                                     mov     rsi,r12
0000004002E2: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
0000004002E9: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004002F0: 0F 05                                        syscall 
0000004002F2: 4D 8B F5                                     mov     r14,r13
0000004002F5: 49 C7 C7 01 00 00 00                         mov     r15,0x1
0000004002FC: 48 BD 00 00 00 00 0A 00 00 00                mov     rbp,0xA00000000
000000400306: 49 8B DD                                     mov     rbx,r13
000000400309: 48 C7 C0 01 00 00 00                         mov     rax,0x1
000000400310: 48 8B 04 C3                                  mov     rax,[rbx+rax*8]
000000400314: 48 0B E8                                     or      rbp,rax
000000400317: 4B 89 2C FE                                  mov     [r14+r15*8],rbp
00000040031B: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400322: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
000000400329: 49 8B D5                                     mov     rdx,r13
00000040032C: 48 C7 C0 10 00 00 00                         mov     rax,0x10
000000400333: 0F 05                                        syscall 
000000400335: 49 8B DC                                     mov     rbx,r12
000000400338: 48 C7 C0 00 00 00 00                         mov     rax,0x0
00000040033F: 48 33 ED                                     xor     rbp,rbp
000000400342: 40 8A 2C 03                                  mov     bpl,[rbx+rax*1]
000000400346: 48 C7 C0 42 00 00 00                         mov     rax,0x42
00000040034D: 48 3B E8                                     cmp     rbp,rax
000000400350: 75 17                                        jnz     0x400369
000000400352: 49 8B EC                                     mov     rbp,r12
000000400355: 48 C7 C3 01 00 00 00                         mov     rbx,0x1
00000040035C: 48 C7 C0 54 00 00 00                         mov     rax,0x54
000000400363: 88 44 1D 00                                  mov     [rbp+rbx*1+0x0],al
000000400367: EB 15                                        jmp     0x40037E
000000400369: 49 8B EC                                     mov     rbp,r12
00000040036C: 48 C7 C3 01 00 00 00                         mov     rbx,0x1
000000400373: 48 C7 C0 46 00 00 00                         mov     rax,0x46
00000040037A: 88 44 1D 00                                  mov     [rbp+rbx*1+0x0],al
00000040037E: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
000000400385: 49 8B DC                                     mov     rbx,r12
000000400388: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040038F: 48 03 D8                                     add     rbx,rax
000000400392: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400399: 48 8B F3                                     mov     rsi,rbx
00000040039C: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004003A3: 0F 05                                        syscall 
0000004003A5: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004003AC: 48 83 C4 08                                  add     rsp,0x8
0000004003B0: C3                                           ret     
'