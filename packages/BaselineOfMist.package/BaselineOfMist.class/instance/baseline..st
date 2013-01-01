baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Mist-Elf';
				package: 'Mist-Assembler';
				package: 'Mist-Disassembler';
				package: 'Mist-DisassemblerTests' with: [ spec requires: #('Mist-Disassembler' 'Mist-FogTests') ];
				package: 'Mist-Fog' with: [ spec requires: #('Mist-Assembler' 'AsmJit') ];
				package: 'Mist-FogTests' with: [ spec requires: #('Mist-Fog' 'Mist-Elf') ].
			spec
				group: 'default' with: #('Mist-Elf' 'Mist-Assembler' 'Mist-Disassembler' 'Mist-Fog');
				group: 'Tests' with: #('Mist-FogTests' 'Mist-DisassemblerTests').
			spec
				project: 'AsmJit'
				with: [ 
					spec
						className: 'BaselineOfAsmJit';
						repository: 'github://martinmcclure/AsmJit:master/packages' ] ]