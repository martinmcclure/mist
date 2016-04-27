tests
testThreePlusFour
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceThreePlusFour.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 48 8B EF                                     mov     rbp,rdi
000000400137: 48 C7 C3 03 00 00 00                         mov     rbx,0x3
00000040013E: 48 C7 C0 04 00 00 00                         mov     rax,0x4
000000400145: 48 03 D8                                     add     rbx,rax
000000400148: 48 D1 E3                                     shl     rbx,0x1
00000040014B: 48 83 C3 01                                  add     rbx,0x1
00000040014F: 48 8B C3                                     mov     rax,rbx
000000400152: 48 83 C4 08                                  add     rsp,0x8
000000400156: C3                                           ret     
'