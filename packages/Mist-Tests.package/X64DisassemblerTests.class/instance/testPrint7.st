tests
testPrint7
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourcePrint7.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 4C 8B E7                                     mov     r12,rdi
000000400137: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040013E: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400145: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
00000040014C: 49 C7 C2 22 00 00 00                         mov     r10,0x22
000000400153: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
00000040015A: 49 C7 C1 00 00 00 00                         mov     r9,0x0
000000400161: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400168: 0F 05                                        syscall 
00000040016A: 48 8B E8                                     mov     rbp,rax
00000040016D: 4C 8B ED                                     mov     r13,rbp
000000400170: 4D 8B F5                                     mov     r14,r13
000000400173: 49 C7 C7 00 00 00 00                         mov     r15,0x0
00000040017A: 48 C7 C5 37 00 00 00                         mov     rbp,0x37
000000400181: 43 88 2C 3E                                  mov     [r14+r15*1],bpl
000000400185: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040018C: 49 8B F5                                     mov     rsi,r13
00000040018F: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400196: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040019D: 0F 05                                        syscall 
00000040019F: 48 8B E8                                     mov     rbp,rax
0000004001A2: 4C 8B FD                                     mov     r15,rbp
0000004001A5: 48 C7 C5 00 00 00 00                         mov     rbp,0x0
0000004001AC: 48 D1 E5                                     shl     rbp,0x1
0000004001AF: 48 83 C5 01                                  add     rbp,0x1
0000004001B3: 48 8B C5                                     mov     rax,rbp
0000004001B6: 48 83 C4 08                                  add     rsp,0x8
0000004001BA: C3                                           ret     
'