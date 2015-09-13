x64-compiling-pass2
emitOpTo: codeStream
	"If I'm not returned from, the last send site must adjust the stack pointer before jumping to the next routine."

	isReturnedFrom
		ifTrue: [ 
			codeStream
				add: codeStream RSP with: compiler numberOfStackTemps * 8;
				ret ]