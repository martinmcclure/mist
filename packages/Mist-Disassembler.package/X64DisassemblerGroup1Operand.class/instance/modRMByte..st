instruction byte handling
modRMByte: byte
	| regField |
	regField := (byte bitAnd: 16r3F) bitShift: -3.
	instruction mnemonic: (#(#add #or #adc #sbb #and #sub #xor #cmp) at: regField + 1)