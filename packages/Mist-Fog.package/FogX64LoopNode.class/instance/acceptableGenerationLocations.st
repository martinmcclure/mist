x64-compiling-pass1
acceptableGenerationLocations
	"My result comes from my loop exit node, so my generation location is of necessity its generation location."

	^ loopExitNode == #infinite
		ifTrue: [ self error: 'Loop without a loop exit node would be infinite -- infinite loops in Fog are not supported' ]
		ifFalse: [ FogX64LocationPreferences new onlyLocation: loopExitNode generationLocation ]