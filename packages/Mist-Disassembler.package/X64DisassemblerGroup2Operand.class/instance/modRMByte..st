instruction byte handling
modRMByte: byte
	instruction mnemonic: (#(#rol #ror #rcl #rcr #shl #shr #unused #sar) at: (self regFieldFrom: byte) + 1)