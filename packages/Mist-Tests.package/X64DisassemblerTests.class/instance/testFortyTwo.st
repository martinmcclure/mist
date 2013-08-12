tests
testFortyTwo
	| disassembly |
	disassembly := self compileAndDisassemble: MistImageTest sourceFortyTwo.
	self
		assert: disassembly
		equals:
			'000000400130: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
000000400137: 48 83 EC 20                                  sub     rsp,0x20
00000040013B: 48 C7 C7 2A 00 00 00                         mov     rdi,0x2A
000000400142: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
000000400149: 0F 05                                        syscall 
'