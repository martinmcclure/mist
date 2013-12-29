temporary public
compileFog: rootNode
	"Compile a  method from the given Fog root, and answer a Method. "

	| compiler machineCode method |
	compiler := FogX64Compiler new.
	machineCode := compiler compile: rootNode.
	method := MistMethod newInImage: self size: machineCode size.
	method
		source: '';
		fog: rootNode;
		machineCode: machineCode.
	^ method