x64-compiling-pass2
emitOpTo: codeStream
	codeStream
		mov: number to: (FogX64Location r: #rax);
		syscall