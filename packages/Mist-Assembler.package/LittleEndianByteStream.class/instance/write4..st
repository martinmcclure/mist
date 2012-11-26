little-endian writing
write4: value
	| remainingBytes |
	remainingBytes := value.
	4
		timesRepeat: [ 
			self nextPut: remainingBytes \\ 256.
			remainingBytes := remainingBytes // 256 ].
	remainingBytes = 0
		ifFalse: [ self error: 'Number out of range.' ]