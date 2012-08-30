instructions
movIntConstant: value to: destination
	"64-bit constant to register. Destination must be register.
	MOV reg64, imm64 B8 +rq iq Move an 64-bit immediate value into a 64-bit register."

	destination isRegister
		ifFalse: [ self error: 'must be a register location' ].
	output nextPut: 16r48 + destination highNumber.	"REX"
	output nextPut: 16rB8 + destination lowNumber.
	output write8: value