portable node creation
compare: first to: second
	^ FogLlvm64CompareNode
		children:
			{first.
			second}