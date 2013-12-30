instruction byte handling
regFieldFrom: modRMByte
	^ (modRMByte bitAnd: 16r38) bitShift: -3