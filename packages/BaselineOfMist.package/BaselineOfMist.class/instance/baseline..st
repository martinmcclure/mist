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
				package: 'Mist-Classes' with: [ spec requires: #('Mist-Objects' 'Mist-Compiler') ];
				package: 'Mist-Compiler' with: [ spec requires: #('PetitSmalltalk') ];
				package: 'Mist-Tests' with: [ spec requires: #('Mist-Classes' 'Mist-Disassembler' 'OSProcess') ];
				package: 'Mist-Fog-LLVM';
				package: 'Mist-Tests-LLVM' with: [ spec requires: #('Mist-Fog-LLVM') ].
			spec
				group: 'default' with: #('Mist-Compiler' 'Mist-Disassembler' 'Mist-Fog-LLVM');
				group: 'Tests' with: #('Mist-Tests' 'Mist-Tests-LLVM').
			spec
				configuration: 'OSProcess' with: [ spec repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main' ];
				package: 'PetitSmalltalk'
					with: [ 
							spec
								repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main';
								requires: #('PetitParser') ];
				project: 'PetitParser'
					with: [ 
							spec
								className: #ConfigurationOfPetitParser;
								versionString: #development;
								repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main';
								loads: #('Tests') ] ]