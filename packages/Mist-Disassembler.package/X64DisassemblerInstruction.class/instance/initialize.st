private-initializing
initialize
	bBit := rBit := wBit := xBit := false.
	bytes := OrderedCollection new: 15.
	displacementSize := displacementValue := immediateSize := immediateValue := 0.
	defaultOpSizeIs64 := expectsModRM := expectsSIB := haveAddrSizePrefix := haveLockPrefix := false.
	haveOpSizePrefix := haveRepePrefix := haveRepnePrefix := isByteOpMode := false.
	hasCompleteOpcode := false.
	mnemonic := 'mnemonic not yet determined'.
	nextOpcodeMap := X64DisassemblerOpcodeMapPrimary singleton.
	operands := OrderedCollection new: 2.
	regIsDest := nil.	"Force this to be set before use; no default"
	immediateBytesReceived := startAddress := 0