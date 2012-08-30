rules-address modes
modRm
	^ byte ==> [ :aByte | currentInstruction modRm: aByte ]