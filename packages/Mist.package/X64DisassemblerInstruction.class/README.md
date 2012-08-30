An X64DisassemblerInstruction represents a single machine instruction for the purposes of the X64Disassembler, with which it collaborates. The representation is not intended to be complete or consistent: There will be invalid byte sequences that appear, if disassembled, like valid instructions, and there will be valid byte sequences that will not disassemble. It is a goal to make all machine instructions that can be output by the Fog compiler disassemble correctly.

Instance Variables:
	startAddress	<ProtoObject | PseudoContext>
	bytes	<ProtoObject | PseudoContext>
	opcodeMap	<ProtoObject | PseudoContext>
	haveOpSizePrefix	<ProtoObject | PseudoContext>
	haveAddrSizePrefix	<ProtoObject | PseudoContext>
	haveLockPrefix	<ProtoObject | PseudoContext>
	haveRepnePrefix	<ProtoObject | PseudoContext>
	haveRepePrefix	<ProtoObject | PseudoContext>
	mnemonic	<ProtoObject | PseudoContext>
	W	<ProtoObject | PseudoContext>
	R	<ProtoObject | PseudoContext>
	X	<ProtoObject | PseudoContext>
	B	<ProtoObject | PseudoContext>
	addressMode	<ProtoObject | PseudoContext>
	regNumber	<ProtoObject | PseudoContext>
	regMemRegNum	<ProtoObject | PseudoContext>
	baseRegNum	<ProtoObject | PseudoContext>
	indexRegNum	<ProtoObject | PseudoContext>
	scale	<ProtoObject | PseudoContext>
	displacement	<ProtoObject | PseudoContext>
	displacementSize	<ProtoObject | PseudoContext>
	immediate	<ProtoObject | PseudoContext>
	immediateSize	<ProtoObject | PseudoContext>
	regIsDest	<ProtoObject | PseudoContext>