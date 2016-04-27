x64-compiling-pass2
emitInputMovsTo: codeStream
	"If any of my input's resting locations are not the same as their consumption location, emit mov instructions to put them where they need to be. Do the moves right to left in case a consumption location is a resting location of a rightward node."

	children size to: 1 by: -1 do: [ :i | 
		| child |
		child := children at: i.
		child restingLocation = child consumptionLocation
			ifFalse: [ 
				codeStream
					mov: (child restingLocation asOperandFor: codeStream)
					to: (child consumptionLocation asOperandFor: codeStream) ] ]