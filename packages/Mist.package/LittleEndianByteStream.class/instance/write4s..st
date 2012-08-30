little-endian writing
write4s: int32
	"Write a signed 32-bit number Numbers > 2**31 but <2**32 will be interpreted as negative.
	Other illegal numbers will error."

	| twosComplement |
	twosComplement := int32 >= 0
		ifTrue: [ int32 ]
		ifFalse: [ 4294967296 + int32 ].
	self write4: twosComplement