tests
testConsume1
	| program disassembly |
	program := FogTests consume1.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C4 00 00 50 00                         mov     rsp,0x500000
00000040007F: 48 83 EC 20                                  sub     rsp,0x20
000000400083: 49 C7 C6 10 00 00 00                         mov     r14,0x10
00000040008A: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400091: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400098: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
00000040009F: 49 C7 C2 22 00 00 00                         mov     r10,0x22
0000004000A6: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
0000004000AD: 49 C7 C1 00 00 00 00                         mov     r9,0x0
0000004000B4: 48 C7 C0 09 00 00 00                         mov     rax,0x9
0000004000BB: 0F 05                                        syscall 
0000004000BD: 4C 8B F8                                     mov     r15,rax
0000004000C0: 4C 89 7C 24 08                               mov     [rsp+0x8],r15
0000004000C5: 4D 03 FE                                     add     r15,r14
0000004000C8: 4C 89 3C 24                                  mov     [rsp],r15
0000004000CC: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000D3: 48 C7 C6 01 54 00 00                         mov     rsi,0x5401
0000004000DA: 48 8B 14 24                                  mov     rdx,[rsp]
0000004000DE: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004000E5: 0F 05                                        syscall 
0000004000E7: 4C 8B 14 24                                  mov     r10,[rsp]
0000004000EB: 49 C7 C4 01 00 00 00                         mov     r12,0x1
0000004000F2: 49 BD FF FF FF FF F5 FF FF FF                mov     r13,0xFFFFFFF5FFFFFFFF
0000004000FC: 4C 8B 34 24                                  mov     r14,[rsp]
000000400100: 49 C7 C7 01 00 00 00                         mov     r15,0x1
000000400107: 4F 8B 3C FE                                  mov     r15,[r14+r15*8]
00000040010B: 4D 23 FD                                     and     r15,r13
00000040010E: 4F 89 3C E2                                  mov     [r10+r12*8],r15
000000400112: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400119: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
000000400120: 48 8B 14 24                                  mov     rdx,[rsp]
000000400124: 48 C7 C0 10 00 00 00                         mov     rax,0x10
00000040012B: 0F 05                                        syscall 
00000040012D: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400134: 48 8B 74 24 08                               mov     rsi,[rsp+0x8]
000000400139: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
000000400140: 48 C7 C0 00 00 00 00                         mov     rax,0x0
000000400147: 0F 05                                        syscall 
000000400149: 4C 8B 14 24                                  mov     r10,[rsp]
00000040014D: 49 C7 C4 01 00 00 00                         mov     r12,0x1
000000400154: 49 BD 00 00 00 00 0A 00 00 00                mov     r13,0xA00000000
00000040015E: 4C 8B 34 24                                  mov     r14,[rsp]
000000400162: 49 C7 C7 01 00 00 00                         mov     r15,0x1
000000400169: 4F 8B 3C FE                                  mov     r15,[r14+r15*8]
00000040016D: 4D 0B FD                                     or      r15,r13
000000400170: 4F 89 3C E2                                  mov     [r10+r12*8],r15
000000400174: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040017B: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
000000400182: 48 8B 14 24                                  mov     rdx,[rsp]
000000400186: 48 C7 C0 10 00 00 00                         mov     rax,0x10
00000040018D: 0F 05                                        syscall 
00000040018F: 4C 8B 74 24 08                               mov     r14,[rsp+0x8]
000000400194: 49 C7 C7 00 00 00 00                         mov     r15,0x0
00000040019B: 4B 8B 3C FE                                  mov     rdi,[r14+r15*8]
00000040019F: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
0000004001A6: 0F 05                                        syscall 
'