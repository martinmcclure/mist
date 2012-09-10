initialize-release
initialize8LineMovs
	"Reg/reg and reg/mem movs"

	self
		atAllFrom: 16r88 to: 16r8B putMnemonic: 'mov';
		at: 16r88 putOperandTypes: #(#Eb #Gb);
		at: 16r89 putOperandTypes: #(#Ev #Gv);
		at: 16r8A putOperandTypes: #(#Gb #Eb);
		at: 16r8B putOperandTypes: #(#Gv #Ev).
