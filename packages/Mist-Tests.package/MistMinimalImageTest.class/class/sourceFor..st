support
sourceFor: selector
	| method |
	method := MistMinimalImageTest class methodDict at: selector.
	^ method sourceCode allButFirst: selector size