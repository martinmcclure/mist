initialize-release
initializeBLineMovs
	"Load immediate 32 or 64-bit value to register"

	self
		atAllFrom: 16rB8 to: 16rBF putMnemonic: 'movabs';
		atAllFrom: 16rB8 to: 16rBF putOperandTypes: #(#plusR #Iv)