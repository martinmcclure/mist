instance creation
destination: destination source: source
	^ self new
		children: { destination. source }
	