x64-compiling-pass2
emitOpTo: codeStream
	| baseLoc indexLoc valueLoc |
	baseLoc := self base consumptionLocation.
	indexLoc := self index consumptionLocation.
	valueLoc := self value consumptionLocation.
	codeStream movByteFromRegister: valueLoc toAddressIn: baseLoc plusIndexIn: indexLoc