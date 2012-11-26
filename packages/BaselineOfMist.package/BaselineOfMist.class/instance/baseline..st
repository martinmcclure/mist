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
				package: 'Mist-DisassemblerTests';
				package: 'Mist-Fog';
				package: 'Mist-FogTests'.
			spec
				group: 'default' with: #('Mist-Elf' 'Mist-Assembler' 'Mist-Disassembler' 'Mist-Fog');
				group: 'Tests' with: #('Mist-FogTests' 'Mist-DisassemblerTests') ]