x64-compiling-pass2
emitOpTo: codeStream
	codeStream
		movIntConstant: number to: (FogX64Location r: #rax);
		syscall