x64-compiling-pass2
emitOpTo: codeStream
	"Base and index must be in registers, result must be in a register. 
	Must clear the destination register first, or the high-order bits could be anything."

	| baseLoc indexLoc destLoc sourceOperand destClearOperand destOperand |
	baseLoc := self base consumptionLocation.
	indexLoc := self index consumptionLocation.
	destLoc := parent generationLocation.
	destClearOperand := codeStream perform: destLoc name64.	"Clear all 64 bits"
	codeStream xor: destClearOperand with: destClearOperand.
	sourceOperand := ((codeStream perform: baseLoc name64) ptr + (codeStream perform: indexLoc name64)) * 1.
	destOperand := codeStream perform: destLoc name8.	"But only move 8"
	codeStream mov: sourceOperand to: destOperand