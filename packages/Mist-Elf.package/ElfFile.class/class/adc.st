examples
adc
	"Writes an executable that breaks then does an instruction
	to be disassembled, should disassemble to adc bpl, spl "

	"ElfFile adc"

	| elfFile seg |
	elfFile := ElfFile new.
	elfFile entryAddress: 16r00400078.
	seg := ElfSegment new.
	seg bytes: #(16rCC 16r40 16r12 16rE5) asByteArray.
	elfFile addSegment: seg.
	elfFile writeToFileNamed: 'adc'