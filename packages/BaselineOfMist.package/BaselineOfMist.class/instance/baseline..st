baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Mist-Elf';
				package: 'Mist-Disassembler';
				package: 'Mist-Fog' with: [ spec requires: #('AsmJit') ];
				package: 'Mist-Objects' with: [spec requires: #('Mist-Fog' 'Mist-Elf')];
				package: 'Mist-Tests' with: [spec requires: #('Mist-Objects')].
			spec
				group: 'default' with: #('Mist-Elf' 'Mist-Disassembler' 'Mist-Fog' 'Mist-Objects');
						group: 'Tests' with: #('Mist-Tests').
			spec
				project: 'AsmJit'
				with: [ 
					spec
						className: 'BaselineOfAsmJit';
								repository: 'github://martinmcclure/AsmJit:master/packages' ] ]