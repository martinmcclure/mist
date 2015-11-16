tests
testEcho1
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceEcho1.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 4C 8B FF                                     mov     r15,rdi
000000400137: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040013E: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400145: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
00000040014C: 49 C7 C2 22 00 00 00                         mov     r10,0x22
000000400153: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
00000040015A: 49 C7 C1 00 00 00 00                         mov     r9,0x0
000000400161: 48 C7 C0 09 00 00 00                         mov     rax,0x9
000000400168: 0F 05                                        syscall 
00000040016A: 48 8B D8                                     mov     rbx,rax
00000040016D: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400174: 48 8B F3                                     mov     rsi,rbx
000000400177: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
00000040017E: 48 C7 C0 00 00 00 00                         mov     rax,0x0
000000400185: 0F 05                                        syscall 
000000400187: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
00000040018E: 48 8B F3                                     mov     rsi,rbx
000000400191: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400198: 48 C7 C0 01 00 00 00                         mov     rax,0x1
00000040019F: 0F 05                                        syscall 
0000004001A1: 48 8B E8                                     mov     rbp,rax
0000004001A4: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004001AB: 48 C7 C0 03 00 00 00                         mov     rax,0x3
0000004001B2: 0F 05                                        syscall 
0000004001B4: 48 8B D8                                     mov     rbx,rax
0000004001B7: 48 C7 C0 00 00 00 00                         mov     rax,0x0
0000004001BE: 48 D1 E0                                     shl     rax,0x1
0000004001C1: 48 05 01 00 00 00                            add     rax,0x1
0000004001C7: 48 83 C4 08                                  add     rsp,0x8
0000004001CB: C3                                           ret     
'