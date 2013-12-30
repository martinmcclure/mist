x64-compiling-pass2
pass2CompileOn: codeStream
	"Before my steps compile I must adjust the stack pointer to make room for stack temps, and
	move any register-passed arguments that cannot stay in their passed registers."

	codeStream sub: codeStream RSP with: compiler numberOfStackTemps * 8.
	self emitArgumentMovsTo: codeStream.
	super pass2CompileOn: codeStream