private
allocateStackTemp
	stackTempsUsed := stackTempsUsed + 1.
	^ stackTemps add: (FogX64StackTempLocation offset: (stackTempsUsed - 1) * 8)