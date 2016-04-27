Abstract. Keeps track of bindings between variable names and macro Fog variables for some defined scope.

Each scope has an enclosing scope until you get to the global scope.
Within a method, the scopes from innermost to outermost  are: 
Temporary scope -- declared method temporaries 
Parameter scope -- formal parameters, and 'self'
Class scope -- instance variables of the defining class
Module scope -- Class and module names available within the module
Global scope -- nil, true, and false, available everywhere.

In a block inside a method, there are additional scopes:
Temporary scope -- declared block temporaries 
Parameter scope -- formal parameters of the block (and NOT self)
and then the temporary scope of the next outer block or method.