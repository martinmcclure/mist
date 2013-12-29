x64-compiling-pass2
pass2CompileOn: codeStream
	"Before my steps compile I must adjust the stack pointer to make room for stack temps."

	codeStream sub: codeStream RSP with: compiler numberOfStackTemps * 8.
	super pass2CompileOn: codeStream