x64-compiling-pass2
pass2CompileOn: codeStream
	codeStream label: loopHeadLabel.
	super pass2CompileOn: codeStream.
	codeStream label: loopTailLabel