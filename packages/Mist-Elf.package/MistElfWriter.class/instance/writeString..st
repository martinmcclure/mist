little-endian writing
writeString: string
	string do: [ :char | stream nextPut: char asInteger ]