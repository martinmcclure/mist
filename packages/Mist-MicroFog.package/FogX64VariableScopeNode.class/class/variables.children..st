portable-instance creation
variables: names children: steps
	^ (self new)
		variables: names;
		children: steps