initialize-release
createRegisters
	"Make all registers in the x86_64 architecture and store in a dictionary by name.
	For registers, the number is the number that goes in the REX prefix and mod/rm bytes
	of most instructions that reference the register"

	| specs |
	Registers := IdentityDictionary new.
	specs := #(#(#rax 0) #(#rcx 1) #(#rdx 2) #(#rbx 3) #(#rsp 4) #(#rbp 5) #(#rsi 6) #(#rdi 7) #(#r8 8) #(#r9 9) #(#r10 10) #(#r11 11) #(#r12 12) #(#r13 13) #(#r14 14) #(#r15 15)).
	specs
		do: [ :spec | 
			| regName number |
			regName := spec at: 1.
			number := spec at: 2.
			Registers
				at: regName
				put:
					((self new)
						name: regName;
						number: number;
						yourself) ]