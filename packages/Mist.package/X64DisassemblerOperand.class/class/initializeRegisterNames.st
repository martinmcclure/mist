initialization
initializeRegisterNames

	RegisterNames := Dictionary new.

	"8-bit"
	RegisterNames at: 1 put: {#al.
	#cl.
	#dl.
	#bl.
	#spl.
	#bpl.
	#sil.
	#dil.
	#r8b.
	#r9b.
	#r10b.
	#r11b.
	#r12b.
	#r13b.
	#r14b.
	#r15b}.
	
	"64-bit"
	RegisterNames at: 8 put: {#rax.
	#rcx.
	#rdx.
	#rbx.
	#rsp.
	#rbp.
	#rsi.
	#rdi.
	#r8.
	#r9.
	#r10.
	#r11.
	#r12.
	#r13.
	#r14.
	#r15}