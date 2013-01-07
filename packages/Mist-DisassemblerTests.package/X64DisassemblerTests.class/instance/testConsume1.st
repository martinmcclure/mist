tests
testConsume1
	| program disassembly |
	program := FogTests consume1.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
			'000000400078: 48 C7 C5 00 00 50 00                         mov     rbp,0x500000
00000040007F: 49 C7 C6 10 00 00 00                         mov     r14,0x10
000000400086: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040008D: 48 C7 C6 00 10 00 00                         mov     rsi,0x1000
000000400094: 48 C7 C2 03 00 00 00                         mov     rdx,0x3
00000040009B: 49 C7 C2 22 00 00 00                         mov     r10,0x22
0000004000A2: 49 C7 C0 FF FF FF FF                         mov     r8,0xFFFFFFFF
0000004000A9: 49 C7 C1 00 00 00 00                         mov     r9,0x0
0000004000B0: 48 C7 C0 09 00 00 00                         mov     rax,0x9
0000004000B7: 0F 05                                        syscall 
0000004000B9: 4C 8B F8                                     mov     r15,rax
0000004000BC: 4C 89 7D F0                                  mov     [rbp-0x10],r15
0000004000C0: 4D 03 FE                                     add     r15,r14
0000004000C3: 4C 89 7D F8                                  mov     [rbp-0x8],r15
0000004000C7: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
0000004000CE: 48 C7 C6 01 54 00 00                         mov     rsi,0x5401
0000004000D5: 48 8B 55 F8                                  mov     rdx,[rbp-0x8]
0000004000D9: 48 C7 C0 10 00 00 00                         mov     rax,0x10
0000004000E0: 0F 05                                        syscall 
0000004000E2: 4C 8B 55 F8                                  mov     r10,[rbp-0x8]
0000004000E6: 49 C7 C4 01 00 00 00                         mov     r12,0x1
0000004000ED: 49 BD FF FF FF FF F5 FF FF FF                mov     r13,0xFFFFFFF5FFFFFFFF
0000004000F7: 4C 8B 75 F8                                  mov     r14,[rbp-0x8]
0000004000FB: 49 C7 C7 01 00 00 00                         mov     r15,0x1
000000400102: 4F 8B 3C FE                                  mov     r15,[r14+r15*8]
000000400106: 4D 23 EF                                     and     r13,r15
000000400109: 4F 89 3C E2                                  mov     [r10+r12*8],r15
00000040010D: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400114: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
00000040011B: 48 8B 55 F8                                  mov     rdx,[rbp-0x8]
00000040011F: 48 C7 C0 10 00 00 00                         mov     rax,0x10
000000400126: 0F 05                                        syscall 
000000400128: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
00000040012F: 48 8B 75 F0                                  mov     rsi,[rbp-0x10]
000000400133: 48 C7 C2 01 00 00 00                         mov     rdx,0x1
00000040013A: 48 C7 C0 00 00 00 00                         mov     rax,0x0
000000400141: 0F 05                                        syscall 
000000400143: 4C 8B 55 F8                                  mov     r10,[rbp-0x8]
000000400147: 49 C7 C4 01 00 00 00                         mov     r12,0x1
00000040014E: 49 BD 00 00 00 00 0A 00 00 00                mov     r13,0xA00000000
000000400158: 4C 8B 75 F8                                  mov     r14,[rbp-0x8]
00000040015C: 49 C7 C7 01 00 00 00                         mov     r15,0x1
000000400163: 4F 8B 3C FE                                  mov     r15,[r14+r15*8]
000000400167: 4D 0B EF                                     or      r13,r15
00000040016A: 4F 89 3C E2                                  mov     [r10+r12*8],r15
00000040016E: 48 C7 C7 00 00 00 00                         mov     rdi,0x0
000000400175: 48 C7 C6 02 54 00 00                         mov     rsi,0x5402
00000040017C: 48 8B 55 F8                                  mov     rdx,[rbp-0x8]
000000400180: 48 C7 C0 10 00 00 00                         mov     rax,0x10
000000400187: 0F 05                                        syscall 
000000400189: 4C 8B 75 F0                                  mov     r14,[rbp-0x10]
00000040018D: 49 C7 C7 00 00 00 00                         mov     r15,0x0
000000400194: 4B 8B 3C FE                                  mov     rdi,[r14+r15*8]
000000400198: 48 C7 C0 E7 00 00 00                         mov     rax,0xE7
00000040019F: 0F 05                                        syscall 
'