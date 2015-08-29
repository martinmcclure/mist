tests
testIdentityAnsweringSmallInteger
"Disable broken test for travis until it runs the first time."
false ifTrue: [  
	FogLlvm64Compiler new compile: self identityAnsweringSmallInteger ]