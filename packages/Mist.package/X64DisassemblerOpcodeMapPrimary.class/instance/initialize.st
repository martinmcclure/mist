initialize-release
initialize
	map := Array new: 256.
	self atAllPut: self errorAction.
	self initializeEscapeOpcodes.
	self
		atAllFrom: 16r00 to: 16r05 putMnemonic: 'add';
		atAllFrom: 16r08 to: 16r0D putMnemonic: 'or';
		atAllFrom: 16r10 to: 16r15 putMnemonic: 'adc';
		atAllFrom: 16r18 to: 16r1D putMnemonic: 'sbb';
		atAllFrom: 16r20 to: 16r25 putMnemonic: 'and';
		atAllFrom: 16r28 to: 16r2D putMnemonic: 'sub';
		atAllFrom: 16r30 to: 16r35 putMnemonic: 'xor';
		atAllFrom: 16r38 to: 16r3D putMnemonic: 'cmp'.
	self
		atAllFrom: 16r00
			to: 16r38
			by: 8
			putOperandTypes: #(#Eb #Gb);
		atAllFrom: 16r01
			to: 16r39
			by: 8
			putOperandTypes: #(#Ev #Gv);
		atAllFrom: 16r02
			to: 16r3A
			by: 8
			putOperandTypes: #(#Gb #Eb);
		atAllFrom: 16r03
			to: 16r3B
			by: 8
			putOperandTypes: #(#Gv #Ev);
		atAllFrom: 16r04
			to: 16r3C
			by: 8
			putOperandTypes: #(#AL #Ib);
		atAllFrom: 16r05
			to: 16r3D
			by: 8
			putOperandTypes: #(#rAX #Iz).
	self
		initializeRexPrefixes;
		initializeBLineMovs;
		initializeCLine