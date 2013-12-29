A FogX64MethodNode is the root of a subroutine. It could be used for non-methods, but almost every routine in Mist *is* a method, hence the name. It expects to be called with 0 or more arguments, and to return a single value. Its children may be statements, or will be a variable scope if any temps are declared at the top level of the method. 

A method node knows the number and names of the arguments it expects and sets up a variable scope for each one. Usually, the first argument is named 'self'. 

In pass 2, a method node may generate code both in the pre-order and the post-order. The pre-order code executes on entry to the method and:
1) Decrements the stack pointer, if necessary, to make room for the number of stack temps used in the method. This value is generated during pass 1 by the Fog compiler, since it often includes implicit variables as well as explicit ones.
2) Moves, as necessary, all register-passed arguments to the resting location of each.

The post-order code is emitted if isReturnedFrom is true (the default). This code:
1) Ensures that my last child's result is in rax.
2) Increments rsp to balance the decrement on entry, if any.
3) Executes a ret instruction, returning from the routine.

The main reason for isReturnedFrom being false is tail call elimination. If this method has been compiled by the Mist compiler with tail call elimination, the node that does the last message send will increment rsp and jmp instead of doing a call. The Fog compiler need not detect whether a tail call can be eliminated; that is done in the higher-level Mist compiler.