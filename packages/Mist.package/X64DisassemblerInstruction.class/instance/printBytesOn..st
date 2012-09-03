instruction printing
printBytesOn: stream
	"There can be up to 15 bytes. Print left-aligned, three characters per byte."

	bytes
		do: [ :byte | 
			byte
				printOn: stream
				base: 16
				length: 2
				padded: true.
			stream space ].
	stream space: (15 - bytes size) * 3