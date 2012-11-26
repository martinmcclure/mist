x64-compiling-pass2
pass2CompileOn: codeStream
	"Code emitted looks like this:
				<child1>
				Jcc elseLabel
				<child2>
				JMP finalLabel
	elseLabel  	<child3>
	finalLabel 	"

	| elseLabel finalLabel |
	elseLabel := 'elseLabel' copy.
	finalLabel := 'finalLabel' copy.
	(children at: 1) child pass2CompileOn: codeStream.
	codeStream jmpIfNot: flagSymbol to: elseLabel.
	(children at: 2) child pass2CompileOn: codeStream.
	codeStream
		jmpTo: finalLabel;
		label: elseLabel.
	(children at: 3) child pass2CompileOn: codeStream.
	codeStream label: finalLabel