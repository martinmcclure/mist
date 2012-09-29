as yet unclassified
initialize
	map := Array new: 256.
	self atAllPut: self errorAction.
	self
		at: 5 putMnemonic: 'syscall';
		at: 16r80 putMnemonic: 'jo';
		at: 16r81 putMnemonic: 'jno';
		at: 16r82 putMnemonic: 'jc';
		at: 16r83 putMnemonic: 'jnc';
		at: 16r84 putMnemonic: 'jz';
		at: 16r85 putMnemonic: 'jnz';
		at: 16r86 putMnemonic: 'jbe';
		at: 16r87 putMnemonic: 'ja';
		at: 16r88 putMnemonic: 'js';
		at: 16r89 putMnemonic: 'jns';
		at: 16r8A putMnemonic: 'jpe';
		at: 16r8B putMnemonic: 'jpo';
		at: 16r8C putMnemonic: 'jl';
		at: 16r8D putMnemonic: 'jge';
		at: 16r8E putMnemonic: 'jle';
		at: 16r8F putMnemonic: 'jg'.
	self atAllFrom: 16r80 to: 16r8F putOperandTypes: #(#Jz)