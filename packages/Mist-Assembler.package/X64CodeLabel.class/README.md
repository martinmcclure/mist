An X64CodeLabel is used by the Mist x86_64 assembler, X64CodeStream.
It may be resolved (if its address is known) or unresolved.
If unresolved, address is #unresolved.
If resolved, unresolvedReferences is #resolved

Instance Variables:
	address	<Symbol | integer>
	unresolvedReferences	<Set of X64CodeUnresolvedReference | Symbol>