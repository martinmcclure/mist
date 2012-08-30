accessing
actionFor: byte repePrefix: haveRepe repnePrefix: haveRepne addrSizePrefix: haveAddrSizePrefix
	"Answer the MapAction for the given byte and prefixes.	
	The primary map does not care about the prefixes."

	^ map at: byte + 1