portable-instance creation
fetchFrom: addressNode atIndex: indexNode
	"fetch a 64-bit word from memory at baseAddress + offset. Offset is in units of 64-bit words."

	^ FogX64Fetch64Node
		children:
			{addressNode.
			indexNode}