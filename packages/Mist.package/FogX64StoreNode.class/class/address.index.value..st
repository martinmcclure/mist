instance creation
address: address index: index value: value
	^ self new
		children:
			{address.
			index.
			value}