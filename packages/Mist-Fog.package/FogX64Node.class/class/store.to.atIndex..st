portable-instance creation
store: valueNode to: baseAddressNode atIndex: indexNode
	"store a 64-bit word of value into memory at baseAddress + index. Index is in units of 64-bit words."

	^ FogX64Store64Node address: baseAddressNode index: indexNode value: valueNode