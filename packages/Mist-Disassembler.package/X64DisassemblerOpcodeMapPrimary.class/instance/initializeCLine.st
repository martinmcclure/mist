initialize-release
initializeCLine
	self atAllFrom: 16rC6 to: 16rC7 putMnemonic: 'mov'.
	self
		at: 16rC6 putOperandTypes: #(#Eb #Ib);
		at: 16rC7 putOperandTypes: #(#Ev #Iz).
	self at: 16rCC putMnemonic: 'int3'