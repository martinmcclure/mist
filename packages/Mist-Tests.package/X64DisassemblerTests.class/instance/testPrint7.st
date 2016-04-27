tests
testPrint7
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourcePrint7.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 4C 8B F7                                     mov     r14,rdi
000000400137: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040013E: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400145: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
00000040014C: 49 C7 C2 22 00 00 00                         mov     r10,0x22
000000400153: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
00000040015A: 49 C7 C1 00 00 00 00                         mov     r9,0x0
000000400161: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400168: 0F 05                                        syscall 
00000040016A: 4C 8B F8                                     mov     r15,rax
00000040016D: 49 8B EF                                     mov     rbp,r15
000000400170: 48 C7 C3 00 00 00 00                         mov     rbx,0x0
000000400177: 48 C7 C0 37 00 00 00                         mov     rax,0x37
00000040017E: 88 44 1D 00                                  mov     [rbp+rbx*1+0x0],al
000000400182: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
000000400189: 49 8B F7                                     mov     rsi,r15
00000040018C: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400193: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040019A: 0F 05                                        syscall 
00000040019C: 48 8B D8                                     mov     rbx,rax
00000040019F: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004001A6: 48 D1 E0                                     shl     rax,0x1
0000004001A9: 48 05 01 00 00 00                            add     rax,0x1
0000004001AF: 48 83 C4 08                                  add     rsp,0x8
0000004001B3: C3                                           ret     
'