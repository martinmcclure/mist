MistSpec is an abstract superclass for specs for bits of code.

Instance Variables
	compiledForm <Object>
	name:		<String>

compiledForm
	- Once the spec has been compiled, the object which it compiled into.
	
name
	- The name of the module, class, or method.

* Module spec gives own internal name, import specs (URLs?, aliases, omits), and class names of own classes. Once compiled, holds module instance as well. The module instance holds the name scope for the module.

* Class spec gives own name, reference to module spec, whether it's private to its module, references to instance-side and class-side behavior specs.

* Behavior spec references class spec, gives the composition expression, defines local instvars, and gives the selectors of its own methods. Once compiled, holds reference to the resulting behavior instance. The behavior instace holds the name scope for the class.

* Method spec references behavior spec, gives its selector and source code, specified whether it's private to its class, and specifies its team (somehow). Once compiled, holds reference to method instance.

Modules, classes, behaviors, and methods each reference the spec from which they were compiled.