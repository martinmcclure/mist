temporary public
compile: sourceString
	"Compile a primitive method from the given source, and answer a Method. Note the temporary nature of doing it this way:
	* We asssume it's source for a primitive
	* The method isn't associated with a class or module or anything
	* Ultimately, this functionality should be on a class, not on the image."

	| rootNode compiler machineCode method |
	rootNode := Compiler evaluate: sourceString.
	compiler := FogX64Compiler new.
	machineCode := compiler compile: rootNode.
	method := MistMethod newInImage: self size: machineCode size.
	method
		source: sourceString;
		fog: rootNode;
		machineCode: machineCode.
	^ method