x64-compiling-pass2
emitOpTo: codeStream
	"Base and index must be in registers, result must be in a register."

	| baseLoc indexLoc destLoc sourceOperand destOperand |
	baseLoc := self base consumptionLocation.
	indexLoc := self index consumptionLocation.
	destLoc := parent generationLocation.
	sourceOperand := ((codeStream perform: baseLoc name64) ptr + (codeStream perform: indexLoc name64)) * 8.
	destOperand := codeStream perform: destLoc name64.
	codeStream mov: sourceOperand to: destOperand