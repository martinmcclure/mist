A MistMethodCompiler compiles a MethodSpec into a MistMethod.

Instance Variables
	fogRoot:		<FogNode>
	image:		<MistImage>
	machineCode:	<MistMachineCode>
	method:		<MistMethod>
	spec:		<MistMethodSpec>

fogRoot
	- The root of the Fog intermediate code representation of the method, which is built and refined through the phases of compilation.

image
	- The image into which the method will be installed.
	
machineCode
	- The actual executable bytes that are part of the final result of the compilation.

method
	- The method object that is the result of the compilation. It references the machineCode, the fogRoot, and the source code.

spec
	- The spec that serves as the source for compilation.
