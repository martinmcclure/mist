initialize-release
initialize7LineJccs
	"Reg/reg and reg/mem movs"

	self
		at: 16r70 putMnemonic: 'jo';
		at: 16r71 putMnemonic: 'jno';
		at: 16r72 putMnemonic: 'jc';
		at: 16r73 putMnemonic: 'jnc';
		at: 16r74 putMnemonic: 'jz';
		at: 16r75 putMnemonic: 'jnz';
		at: 16r76 putMnemonic: 'jbe';
		at: 16r77 putMnemonic: 'ja';
		at: 16r78 putMnemonic: 'js';
		at: 16r79 putMnemonic: 'jns';
		at: 16r7A putMnemonic: 'jpe';
		at: 16r7B putMnemonic: 'jpo';
		at: 16r7C putMnemonic: 'jl';
		at: 16r7D putMnemonic: 'jge';
		at: 16r7E putMnemonic: 'jle';
		at: 16r7F putMnemonic: 'jg'.
	self atAllFrom: 16r70 to: 16r7F putOperandTypes: #(#Jb)