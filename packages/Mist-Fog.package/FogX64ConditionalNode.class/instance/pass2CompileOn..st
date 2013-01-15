x64-compiling-pass2
pass2CompileOn: codeStream
	"Code emitted looks like this:
				<child1>
				Jcc elseLabel
				<child2>
				JMP finalLabel
	elseLabel  	<child3>
	finalLabel 	"

	| elseLabel finalLabel opSymbol |
	elseLabel := AJJumpLabel new name: 'elseLabel' copy.
	finalLabel := AJJumpLabel new name: 'finalLabel' copy.
	opSymbol := ('jn' , flagSymbol asLowercase , ':') asSymbol.
	(children at: 1) child pass2CompileOn: codeStream.
	codeStream perform: opSymbol with: elseLabel.
	(children at: 2) child pass2CompileOn: codeStream.
	codeStream
		jmp: finalLabel;
		label: elseLabel.
	(children at: 3) child pass2CompileOn: codeStream.
	codeStream label: finalLabel