tests
testFortyTwo
	| program disassembly |
	program := FogTests fortyTwo.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
00000040007F: 48 83 EC 20                                  sub     rsp,0x20
000000400083: 48 C7 C7 2A 00 00 00                         mov     rdi,0x2A
00000040008A: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
000000400091: 0F 05                                        syscall 
'