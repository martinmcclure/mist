private-initializing
initialize
	bBit := rBit := wBit := xBit := false.
	bytes := OrderedCollection new: 15.
	displacementSize := displacementValue := immediateSize := immediateValue := 0.
	expectsModRM := expectsSIB := haveAddrSizePrefix := haveLockPrefix := haveOpSizePrefix := haveRepePrefix := haveRepnePrefix := false.
	hasCompleteOpcode := false.
	mnemonic := 'mnemonic not yet determined'.
	nextOpcodeMap := X64DisassemblerOpcodeMapPrimary singleton.
	operands := OrderedCollection new: 2.
	regIsDest := nil.	"Force this to be set before use; no default"
	startAddress := 0