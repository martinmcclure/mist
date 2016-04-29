private
compileMicroFog: rootNode
	"Compile a  method from the given Fog root, and answer a Method. "

	machineCode := FogX64Compiler new compile: rootNode.
	method := MistMethod newInImage: image size: machineCode size.
	method
		source: '';
		fog: rootNode;
		machineCode: machineCode.
	^ method