initialize-release
initialize
	"Not assigned in normal assignment order: rax, rbx, and r11 are scratch registers available to nodes for their internal use. The scratch registers may be assigned if there is pressure for registers and nodes that use that scratch registers are not executed during the variable's lifetime.
	Also not assigned: rsp (stack pointer)"

	| l |
	loopsInScope := IdentityDictionary new.
	stackTempsUsed := 0.	"How far to move the stack pointer on method entry"
	stackTemps := OrderedCollection new.
	scopeStack := FogScopeStack new.
	l := FogX64Location.	"registers in assignment order"
	assignableRegisters := {(l r: #rbp).
	(l r: #r15).
	(l r: #r14).
	(l r: #r13).
	(l r: #r12).
	(l r: #r10).
	(l r: #r9).
	(l r: #r8).
	(l r: #rcx).
	(l r: #rdx).
	(l r: #rsi).
	(l r: #rdi)}.
	allRegisters := {(l r: #rax).
	(l r: #rbx).
	(l r: #r11)} , assignableRegisters	"rsp is reserved as stack pointer. rax, rbx, and r11 are scratch registers usable by any single node.
	AllRegisters includes the scratch registers, but not rsp."