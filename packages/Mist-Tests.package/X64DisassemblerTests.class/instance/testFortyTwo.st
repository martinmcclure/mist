tests
testFortyTwo
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceFortyTwo.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 4C 8B FF                                     mov     r15,rdi
000000400137: 48 C7 C5 2A 00 00 00                         mov     rbp,0x2A
00000040013E: 48 D1 E5                                     shl     rbp,0x1
000000400141: 48 83 C5 01                                  add     rbp,0x1
000000400145: 48 8B C5                                     mov     rax,rbp
000000400148: 48 83 C4 08                                  add     rsp,0x8
00000040014C: C3                                           ret     
'