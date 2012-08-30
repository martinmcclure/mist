instructions
movFrom: sourceLoc to: destLoc
	"Currently used only for temp variables: Registers and stack frames relative to rbp"

	"64-bit register/memory to 64-bit register/memory. At least one loc must be register.
	MOV reg/mem64, reg64 89 /r Move the contents of a 64-bit register to a 64-bit
		destination register or memory operand
	MOV reg64, reg/mem64 8B /r Move the contents of a 64-bit register or memory
		operand to a 64-bit destination register."

	sourceLoc isRegister
		ifTrue: [ 
			self
				writeOpcode: 16r89 reg: sourceLoc regMem: destLoc;
				writeDisplacementFor: destLoc ]
		ifFalse: [ 
			destLoc isRegister
				ifTrue: [ 
					self
						writeOpcode: 16r8B reg: destLoc regMem: sourceLoc;
						writeDisplacementFor: sourceLoc ]
				ifFalse: [ self error: 'either source or dest must be a register' ] ]