testing
specifiesUniqueRegister
	"Answer true if one specific register is the only acceptable location."

	^ isStackFrameLocationOK not and: [ acceptableRegisters size = 1 ]