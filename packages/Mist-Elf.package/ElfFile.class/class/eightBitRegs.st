examples
eightBitRegs
	"Writes an executable that breaks and does a couple of movs, to be disassembled in GDB, to demonstrate that adding a REX prefix changes a reference to AH to a reference to SPL. Then exits with 42, just so it will do something. "
	"ElfFile eightBitRegs"

	| elfFile seg |
	elfFile := ElfFile new.
	elfFile entryAddress: 16r00400078.
	seg := ElfSegment new.
	seg
		bytes: #(16rCC 16r88 16rC4 16r40 16r88 16rC4 16r48 16rB8 16rE7 00 00 00 00 00 00 00 16r48 16rBF 16r2A 00 00 00 00 00 00 00 16r0F 16r05 00 00) asByteArray.
	elfFile addSegment: seg.
	elfFile writeToFileNamed: 'eightBitRegs'