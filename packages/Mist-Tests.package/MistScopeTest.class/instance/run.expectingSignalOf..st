support
run: aBlock expectingSignalOf: anExceptionalEvent
	^ self should: aBlock raise: anExceptionalEvent