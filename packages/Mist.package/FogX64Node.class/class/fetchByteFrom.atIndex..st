portable-instance creation
fetchByteFrom: addressNode atIndex: indexNode
	"fetch a byte from memory at baseAddress + offset. Offset is in units of bytes"

	^ FogX64FetchByteNode
		children:
			{addressNode.
			indexNode}