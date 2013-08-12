instance creation
withAddress: address size: physicalSize
	| inst |
	inst := self new.
	inst
		physicalAddress: address;
		physicalSize: physicalSize.
	^ inst