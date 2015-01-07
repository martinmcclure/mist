baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Mist-Elf';
				package: 'Mist-AsmJit';
				package: 'Mist-Disassembler';
				package: 'Mist-Fog' with: [ spec requires: #('Mist-AsmJit') ];
				package: 'Mist-Objects' with: [ spec requires: #('Mist-Fog' 'Mist-Elf') ];
				package: 'Mist-Classes' with: [ spec requires: #('Mist-Objects') ];
				package: 'Mist-Tests' with: [ spec requires: #('Mist-Classes' 'Mist-Disassembler' 'OSProcess') ].
			spec
				group: 'default' with: #('Mist-Elf' 'Mist-Disassembler' 'Mist-Classes');
				group: 'Tests' with: #('Mist-Tests').
			spec configuration: 'OSProcess' with: [ spec repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main' ] ]