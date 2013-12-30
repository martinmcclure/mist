tests
testThreePlusFour
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourceThreePlusFour.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 4C 8B F7                                     mov     r14,rdi
000000400137: 49 C7 C7 03 00 00 00                         mov     r15,0x3
00000040013E: 48 C7 C5 04 00 00 00                         mov     rbp,0x4
000000400145: 4C 03 FD                                     add     r15,rbp
000000400148: 49 8B EF                                     mov     rbp,r15
00000040014B: 48 D1 E5                                     shl     rbp,0x1
00000040014E: 48 83 C5 01                                  add     rbp,0x1
000000400152: 48 8B C5                                     mov     rax,rbp
000000400155: 48 83 C4 08                                  add     rsp,0x8
000000400159: C3                                           ret     
'