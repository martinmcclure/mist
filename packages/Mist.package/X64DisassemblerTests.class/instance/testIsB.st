tests
testIsB
	| program disassembly |
	program := FogTests isB.
	disassembly := self compileAndDisassemble: program.
	self
		assert: disassembly
		equals:
'000000400078: 48 BD 00 00 50 00 00 00 00 00                mov     rbp,0x500000
000000400082: 49 BE 10 00 00 00 00 00 00 00                mov     r14,0x10
00000040008C: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
000000400096: 48 BE 00 10 00 00 00 00 00 00                mov     rsi,0x1000
0000004000A0: 48 BA 03 00 00 00 00 00 00 00                mov     rdx,0x3
0000004000AA: 49 BA 22 00 00 00 00 00 00 00                mov     r10,0x22
0000004000B4: 49 B8 FF FF FF FF FF FF FF FF                mov     r8,0xFFFFFFFFFFFFFFFF
0000004000BE: 49 B9 00 00 00 00 00 00 00 00                mov     r9,0x0
0000004000C8: 48 B8 09 00 00 00 00 00 00 00                mov     rax,0x9
0000004000D2: 0F 05                                        syscall 
0000004000D4: 49 89 C7                                     mov     r15,rax
0000004000D7: 4C 89 BD F0 FF FF FF                         mov     [rbp-0x10],r15
0000004000DE: 4D 01 F7                                     add     r15,r14
0000004000E1: 4C 89 BD F8 FF FF FF                         mov     [rbp-0x8],r15
0000004000E8: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
0000004000F2: 48 BE 01 54 00 00 00 00 00 00                mov     rsi,0x5401
0000004000FC: 48 8B 95 F8 FF FF FF                         mov     rdx,[rbp-0x8]
000000400103: 48 B8 10 00 00 00 00 00 00 00                mov     rax,0x10
00000040010D: 0F 05                                        syscall 
00000040010F: 4C 8B 95 F8 FF FF FF                         mov     r10,[rbp-0x8]
000000400116: 49 BC 01 00 00 00 00 00 00 00                mov     r12,0x1
000000400120: 49 BD FF FF FF FF F5 FF FF FF                mov     r13,0xFFFFFFF5FFFFFFFF
00000040012A: 4C 8B B5 F8 FF FF FF                         mov     r14,[rbp-0x8]
000000400131: 49 BF 01 00 00 00 00 00 00 00                mov     r15,0x1
00000040013B: 4F 8B 3C FE                                  mov     r15,[r14+r15*8]
00000040013F: 4D 21 EF                                     and     r15,r13
000000400142: 4F 89 3C E2                                  mov     [r10+r12*8],r15
000000400146: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
000000400150: 48 BE 02 54 00 00 00 00 00 00                mov     rsi,0x5402
00000040015A: 48 8B 95 F8 FF FF FF                         mov     rdx,[rbp-0x8]
000000400161: 48 B8 10 00 00 00 00 00 00 00                mov     rax,0x10
00000040016B: 0F 05                                        syscall 
00000040016D: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
000000400177: 48 8B B5 F0 FF FF FF                         mov     rsi,[rbp-0x10]
00000040017E: 48 BA 01 00 00 00 00 00 00 00                mov     rdx,0x1
000000400188: 48 B8 00 00 00 00 00 00 00 00                mov     rax,0x0
000000400192: 0F 05                                        syscall 
000000400194: 4C 8B 95 F8 FF FF FF                         mov     r10,[rbp-0x8]
00000040019B: 49 BC 01 00 00 00 00 00 00 00                mov     r12,0x1
0000004001A5: 49 BD 00 00 00 00 0A 00 00 00                mov     r13,0xA00000000
0000004001AF: 4C 8B B5 F8 FF FF FF                         mov     r14,[rbp-0x8]
0000004001B6: 49 BF 01 00 00 00 00 00 00 00                mov     r15,0x1
0000004001C0: 4F 8B 3C FE                                  mov     r15,[r14+r15*8]
0000004001C4: 4D 09 EF                                     or      r15,r13
0000004001C7: 4F 89 3C E2                                  mov     [r10+r12*8],r15
0000004001CB: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
0000004001D5: 48 BE 02 54 00 00 00 00 00 00                mov     rsi,0x5402
0000004001DF: 48 8B 95 F8 FF FF FF                         mov     rdx,[rbp-0x8]
0000004001E6: 48 B8 10 00 00 00 00 00 00 00                mov     rax,0x10
0000004001F0: 0F 05                                        syscall 
0000004001F2: 4C 8B B5 F0 FF FF FF                         mov     r14,[rbp-0x10]
0000004001F9: 49 BF 00 00 00 00 00 00 00 00                mov     r15,0x0
000000400203: 49 BD 00 00 00 00 00 00 00 00                mov     r13,0x0
00000040020D: 47 8A 2C 3E                                  mov     r13b,[r14+r15*1]
000000400211: 49 BF 42 00 00 00 00 00 00 00                mov     r15,0x42
00000040021B: 4D 39 EF                                     cmp     r15,r13
00000040021E: 0F 85 24 00 00 00                            jnz     0x400248
000000400224: 4C 8B A5 F0 FF FF FF                         mov     r12,[rbp-0x10]
00000040022B: 49 BE 01 00 00 00 00 00 00 00                mov     r14,0x1
000000400235: 49 BF 54 00 00 00 00 00 00 00                mov     r15,0x54
00000040023F: 47 88 3C 34                                  mov     [r12+r14*1],r15b
000000400243: E9 1F 00 00 00                               jmp     0x400267
000000400248: 4C 8B A5 F0 FF FF FF                         mov     r12,[rbp-0x10]
00000040024F: 49 BE 01 00 00 00 00 00 00 00                mov     r14,0x1
000000400259: 49 BF 46 00 00 00 00 00 00 00                mov     r15,0x46
000000400263: 47 88 3C 34                                  mov     [r12+r14*1],r15b
000000400267: 48 BF 01 00 00 00 00 00 00 00                mov     rdi,0x1
000000400271: 4C 8B BD F0 FF FF FF                         mov     r15,[rbp-0x10]
000000400278: 48 BE 01 00 00 00 00 00 00 00                mov     rsi,0x1
000000400282: 4C 01 FE                                     add     rsi,r15
000000400285: 48 BA 01 00 00 00 00 00 00 00                mov     rdx,0x1
00000040028F: 48 B8 01 00 00 00 00 00 00 00                mov     rax,0x1
000000400299: 0F 05                                        syscall 
00000040029B: 48 BF 00 00 00 00 00 00 00 00                mov     rdi,0x0
0000004002A5: 48 B8 E7 00 00 00 00 00 00 00                mov     rax,0xE7
0000004002AF: 0F 05                                        syscall 
'
