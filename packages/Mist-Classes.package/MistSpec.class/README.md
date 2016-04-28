MistSpec is an abstract superclass for specs for bits of code.

Instance Variables
	compiledForm <Object>
	isCompiled	<Boolean>

compiledForm
	- Once the spec has been compiled, the object which it compiled into.

isCompiled
	-True once the spec has been compiled.
		
Once compiled, the spec becomes immutable.

Major protocol:

compileInto: anImage with: aCompiler
  If I have not yet been compiled, compile me using the given compiler. If I 
	have been compiled, do nothing.

* Module spec gives own internal name, import specs (local names, aliases, omits), and class specs of its own classes. Once compiled, it holds the module instance as well. The module instance holds the name scope for the module.

* Class spec gives own name, reference to module spec, whether it's private to its module, references to instance-side and class-side behavior specs.

* Behavior spec references class spec, gives the composition expression, defines local instvars, and references its method specs. Once compiled, holds reference to the resulting behavior instance. The behavior instance holds the name scope for the class.

* Method spec references behavior spec, gives its selector and source code, specifies whether it's private to its class, and later will specify its team (somehow). Once compiled, holds reference to method instance.

* Specs become immutable once compiled. Later, with incremental development models, this may change.

