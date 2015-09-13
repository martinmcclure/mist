accessing
onlyRegister: aRegister
	self mustBeRegister.
	acceptableLocations
		removeAll;
		add: aRegister