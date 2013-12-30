testing
isScratchRegister
	"Answer true if I am one of the Mist x64 scratch registers rax, rbx, or r11"

	^ #(0 3 11) includes: number