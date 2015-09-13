x64-compiling-pass2
emitOpTo: codeStream
	| baseLoc indexLoc valueLoc sourceOperand destOperand |
	baseLoc := self base consumptionLocation.
	indexLoc := self index consumptionLocation.
	valueLoc := self value consumptionLocation.
	sourceOperand := codeStream perform: valueLoc name64.
	destOperand := ((codeStream perform: baseLoc name64) ptr + (codeStream perform: indexLoc name64)) * 8.
	codeStream mov: sourceOperand to: destOperand