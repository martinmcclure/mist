accessing
actionFor: byte repePrefix: haveRepe repnePrefix: haveRepne addrSizePrefix: haveAddrSizePrefix
	"Answer the MapAction for the given byte and prefixes.	
	The secondary map might care about the prefixes, but not in cases coded so far."

	^ map at: byte + 1