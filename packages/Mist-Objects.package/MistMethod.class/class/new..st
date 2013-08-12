instance creation
new: machineCodeSize
	| inst |
	inst := self new.
	inst machineCodeSize: machineCodeSize.
	^ inst