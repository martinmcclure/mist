portable-instance creation
storeByte: value to: address atIndex: index
	"store an 8-bit byte, the lower 8 bits of value, into memory at baseAddress + index. Index is signed, and in bytes.."

	^ FogX64StoreByteNode address: address index: index value: value