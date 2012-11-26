x64-compiling-pass2
emitOutputMovTo: codeStream
	"If my parent will use my output, and my output is constrained, and that constraint is not met, emit a mov instruction to put it where it needs to be."

	(parent isDummy not and: [ parent generationLocation ~= parent restingLocation ])
		ifTrue: [ codeStream movFrom: parent generationLocation to: parent restingLocation ]