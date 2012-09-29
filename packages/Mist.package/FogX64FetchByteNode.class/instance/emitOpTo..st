x64-compiling-pass2
emitOpTo: codeStream
	"Base and index must be in registers, result must be in a register. 
	Must clear the destination register first, or the high-order bits could be anything."

	| baseLoc indexLoc destLoc |
	baseLoc := self base consumptionLocation.
	indexLoc := self index consumptionLocation.
	destLoc := parent generationLocation.
	codeStream movIntConstant: 0 to: destLoc. "Better to xor with self here."
	codeStream movByteFromAddressIn: baseLoc plusIndexIn: indexLoc toRegister: destLoc