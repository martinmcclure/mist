x64-compiling-pass2
pass2CompileOn: codeStream
	children do: [ :var | var child pass2CompileOn: codeStream ].
	self emitTo: codeStream