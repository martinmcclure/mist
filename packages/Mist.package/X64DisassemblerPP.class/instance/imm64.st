rules-address modes
imm64
	^ (byte , byte , byte , byte , byte , byte , byte , byte) flatten
		==> [ :bytes | 
			| value |
			value := 0.
			bytes reverseDo: [ :aByte | value := value * 256 + aByte ].
			currentInstruction immediateOperand: value ]