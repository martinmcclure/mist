x64-compiling-pass2
emitOpTo: codeStream
	"Base and index must be in registers, result must be in a register."

	| baseLoc indexLoc destLoc |
	baseLoc := self base consumptionLocation.
	indexLoc := self index consumptionLocation.
	destLoc := parent generationLocation.
	codeStream movByteFromAddressIn: baseLoc plusIndexIn: indexLoc toRegister: destLoc