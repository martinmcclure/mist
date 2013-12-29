temporary public
compileSource: sourceString
	"Compile a primitive method from the given source, and answer a Method. Note the temporary nature of doing it this way:
	* We asssume it's source for a primitive
	* The method isn't associated with a class or module or anything
	* Ultimately, this functionality should be on a class, not on the image."

	| rootNode method |
	rootNode := Compiler evaluate: sourceString.
	method := self compileFog: rootNode.
	method source: sourceString.
	^ method