support
sourceFor: selector
	| method |
	method := self class methodDict at: selector.
	^ method sourceCode allButFirst: selector size