accessing
onlyRegister: aRegister
	self mustBeRegister.
	acceptableRegisters
		removeAll;
		add: aRegister