initialize-release
initializeRexPrefixes
	16r40 to: 16r4F do: [ :i | map at: i + 1 put: (X64DisassemblerRexPrefixAction byte: i) ]