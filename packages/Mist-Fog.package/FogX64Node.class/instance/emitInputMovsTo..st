x64-compiling-pass2
emitInputMovsTo: codeStream
	"If any of my input's resting locations are not the same as their consumption location, emit mov instructions to put them where they need to be."

	1 to: children size do: [ :i | 
		| child assignedLoc |
		child := children at: i.
		child restingLocation = child consumptionLocation
			ifFalse: [ 
				codeStream
					mov: (child restingLocation asOperandFor: codeStream)
					to: (child consumptionLocation asOperandFor: codeStream) ] ]