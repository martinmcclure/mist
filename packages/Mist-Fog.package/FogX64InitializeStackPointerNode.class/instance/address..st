accessing
address: addressInteger
	"Stack must be 16-byte aligned, per the ABI."

	addressInteger \\ 16 = 0
		ifFalse: [ self error: 'Attempt to set stack to non-aligned value.' ].
	address := addressInteger