tests
testEcho1
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourceEcho1.
	self
		assert: disassembly
		equals:
			'000000400130: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
000000400137: 48 83 EC 20                                  sub     rsp,0x20
00000040013B: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400142: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400149: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
000000400150: 49 C7 C2 22 00 00 00                         mov     r10,0x22
000000400157: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
00000040015E: 49 C7 C1 00 00 00 00                         mov     r9,0x0
000000400165: 48 C7 C0 09 00 00 00                         mov     rax,0x9
00000040016C: 0F 05                                        syscall 
00000040016E: 48 8B E8                                     mov     rbp,rax
000000400171: 4C 8B FD                                     mov     r15,rbp
000000400174: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040017B: 49 8B F7                                     mov     rsi,r15
00000040017E: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400185: 48 C7 C0 00 00 00 00                         mov     rax,0x0
00000040018C: 0F 05                                        syscall 
00000040018E: 48 C7 C7 01 00 00 00                         mov     rdi,0x1
000000400195: 49 8B F7                                     mov     rsi,r15
000000400198: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
00000040019F: 48 C7 C0 01 00 00 00                         mov     rax,0x1
0000004001A6: 0F 05                                        syscall 
0000004001A8: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004001AF: 48 C7 C0 03 00 00 00                         mov     rax,0x3
0000004001B6: 0F 05                                        syscall 
0000004001B8: 48 8B F8                                     mov     rdi,rax
0000004001BB: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004001C2: 0F 05                                        syscall 
'