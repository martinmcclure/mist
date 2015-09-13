instance creation
varName: varName value: value
	^ (self new)
		varName: varName;
		children: {value}