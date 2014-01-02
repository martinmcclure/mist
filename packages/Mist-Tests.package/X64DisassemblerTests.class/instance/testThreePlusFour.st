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
000000400148: 49 D1 E7                                     shl     r15,0x1
00000040014B: 49 83 C7 01                                  add     r15,0x1
00000040014F: 49 8B C7                                     mov     rax,r15
000000400152: 48 83 C4 08                                  add     rsp,0x8
000000400156: C3                                           ret     
'