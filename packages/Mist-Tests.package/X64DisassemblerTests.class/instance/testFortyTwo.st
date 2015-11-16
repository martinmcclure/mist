tests
testFortyTwo
	| disassembly |
	disassembly := self compileAndDisassemble: MistMinimalImageTest sourceFortyTwo.
	self
		assert: disassembly
		equals:
			'000000400130: 48 83 EC 08                                  sub     rsp,0x8
000000400134: 48 8B DF                                     mov     rbx,rdi
000000400137: 48 C7 C0 2A 00 00 00                         mov     rax,0x2A
00000040013E: 48 D1 E0                                     shl     rax,0x1
000000400141: 48 05 01 00 00 00                            add     rax,0x1
000000400147: 48 83 C4 08                                  add     rsp,0x8
00000040014B: C3                                           ret     
'