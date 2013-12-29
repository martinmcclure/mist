instance creation
address: fixedAddress children: children
	^ self new
		address: fixedAddress;
		children: children;
		yourself