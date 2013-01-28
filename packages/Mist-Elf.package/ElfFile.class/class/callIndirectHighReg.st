examples
callIndirectHighReg
	"Writes an executable that breaks then does a call (never to be executed, unless you foolishly do so in GDB.
	To demonstrate the disassembly of a relative call with and without REX.W "

	"ElfFile callIndirectHighReg"

	| elfFile seg |
	elfFile := ElfFile new.
	elfFile entryAddress: 16r00400078.
	seg := ElfSegment new.
	seg bytes: #(16rCC 16r41 16rFF 16r10 16r49 16rFF 16r10) asByteArray.
	elfFile addSegment: seg.
	elfFile writeToFileNamed: 'callIndirectHighReg'