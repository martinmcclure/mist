instruction byte handling
modRMByte: byte
	instruction mnemonic: (#(#inc #dec #call #unhandled #jmp #unhandled #push #illegal) at: (self regFieldFrom: byte) + 1)