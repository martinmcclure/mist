address modes sent by perform:
Gv
	"Op mode Gv, register specified by reg field of modRM byte. 
	Operand size could be 2, 4, or 8 bytes, but is always assumed to 64-bit in Mist."

	expectsModRM := true.
	regIsDest := operands isEmpty.
	operands add: 'Gv placeholder'. "Waiting for modRM byte (and possibly SIB) before we can compute the actual operand."