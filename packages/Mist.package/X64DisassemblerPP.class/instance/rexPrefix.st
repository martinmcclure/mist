rules-instruction support
rexPrefix
	^ (PPPredicateObjectParser on: [ :aByte | aByte between: 16r40 and: 16r4F ] message: 'expected REX prefix')
		==> [ :rexByte | currentInstruction rexByte: rexByte ]