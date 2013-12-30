instruction byte handling
modRMByte: byte
	instruction mnemonic: (#(#add #or #adc #sbb #and #sub #xor #cmp) at: (self regFieldFrom: byte) + 1)