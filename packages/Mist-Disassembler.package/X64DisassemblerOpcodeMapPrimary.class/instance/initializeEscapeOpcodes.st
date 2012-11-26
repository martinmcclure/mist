initialize-release
initializeEscapeOpcodes
	self at: 15 put: (X64DisassemblerEscapeAction map: X64DisassemblerOpcodeMapSecondary singleton)