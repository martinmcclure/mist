tests
testPrint7
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourcePrint7.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 48 89 3C 24                                  mov     [rsp],rdi
000000400138: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040013F: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400146: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
00000040014D: 49 C7 C2 22 00 00 00                         mov     r10,0x22
000000400154: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
00000040015B: 49 C7 C1 00 00 00 00                         mov     r9,0x0
000000400162: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400169: 0F 05                                        syscall 
00000040016B: 48 8B E8                                     mov     rbp,rax
00000040016E: 4C 8B E5                                     mov     r12,rbp
000000400171: 4D 8B F4                                     mov     r14,r12
000000400174: 49 C7 C7 00 00 00 00                         mov     r15,0x0
00000040017B: 48 C7 C5 37 00 00 00                         mov     rbp,0x37
000000400182: 43 88 2C 3E                                  mov     [r14+r15*1],bpl
000000400186: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040018D: 49 8B F4                                     mov     rsi,r12
000000400190: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400197: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040019E: 0F 05                                        syscall 
0000004001A0: 48 8B E8                                     mov     rbp,rax
0000004001A3: 48 C7 C5 00 00 00 00                         mov     rbp,0x0
0000004001AA: 48 D1 E5                                     shl     rbp,0x1
0000004001AD: 48 83 C5 01                                  add     rbp,0x1
0000004001B1: 48 8B C5                                     mov     rax,rbp
0000004001B4: 48 83 C4 08                                  add     rsp,0x8
0000004001B8: C3                                           ret     
'