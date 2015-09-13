x64-compiling-pass2
emitArgumentMovsTo: codeStream
	"We have some number of arguments passed in in registers. Each has been declared as a variable, and has been assigned a location. 
	If that location is not the same register that it was passed in, we must emit code to move it to its location here."

	| l possibleLocations numArgs passedLocations |
	l := FogX64RegisterLocation.
	possibleLocations := {(l r: #rdi).
	(l r: #rsi).
	(l r: #rdx).
	(l r: #rcx).
	(l r: #r8).
	(l r: #r9)}.
	numArgs := registerArguments size.
	passedLocations := possibleLocations first: numArgs.
	registerArguments
		with: passedLocations
		do: [ :arg :loc | 
			arg location = loc
				ifFalse: [ codeStream mov: (loc asOperandFor: codeStream) to: (arg location asOperandFor: codeStream) ] ]