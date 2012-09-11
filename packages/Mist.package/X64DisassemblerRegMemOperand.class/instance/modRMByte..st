instruction byte handling
modRMByte: byte
	"Mode 3 is the simplest -- it just indicates a register.
	Mode 0 is indirect addressing of memory through a register, or rip-relative.
	Modes 1 and 2 are memory indirect through a register, with a fixed displacement, and possibly requiring a SIB byte for scale and index."

	| rm |
	mod := byte bitShift: -6.
	rm := byte bitAnd: 16r7.
	regNum := instruction bBit
		ifTrue: [ 8 + rm ]
		ifFalse: [ rm ].
	mod = 3
		ifFalse: [ 
			rm = 4
				ifTrue: [ self requireSIB ].
			mod = 1
				ifTrue: [ instruction displacementSize: 1 ].
			mod = 2
				ifTrue: [ instruction displacementSize: 4 ].
			mod = 0 & (rm = 5)
				ifTrue: [ 
					isRipRelative := true.
					instruction displacementSize: 4 ] ]