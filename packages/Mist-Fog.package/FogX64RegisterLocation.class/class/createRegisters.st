initialize-release
createRegisters
	"Make all registers in the x86_64 architecture and store in a dictionary by name.
	For registers, the number is the number that goes in the REX prefix and mod/rm bytes
	of most instructions that reference the register"

	| specs |
	Registers := IdentityDictionary new.
	specs := #(#(#rax #AL 0) #(#rcx #CL 1) #(#rdx #DL 2) #(#rbx #BL 3) #(#rsp #SPL 4) #(#rbp #BPL 5) #(#rsi #SIL 6) #(#rdi #DIL 7) #(#r8 #R8B 8) #(#r9 #R9B 9) #(#r10 #R10B 10) #(#r11 #R11B 11) #(#r12 #R12B 12) #(#r13 #R13B 13) #(#r14 #R14B 14) #(#r15 #R15B 15)).
	specs
		do: [ :spec | 
			| reg64Name reg8Name number |
			reg64Name := spec at: 1.
			reg8Name := spec at: 2.
			number := spec at: 3.
			Registers
				at: reg64Name
				put:
					(self new
						name: reg64Name;
						byteName: reg8Name;
						number: number;
						yourself) ]