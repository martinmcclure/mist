initialize-release
initialize
	"Not assigned: rsp (stack pointer)"

	| l |
	loopsInScope := IdentityDictionary new.
	stackTempsUsed := 0.	"How far to move the stack pointer on method entry"
	stackTemps := OrderedCollection new.
	scopeStack := FogScopeStack new.
	l := FogX64Location.	"registers in assignment order"
	assignableRegisters := {"rsp is reserved as stack pointer."
	(l r: #rax).
	(l r: #rbx).
	(l r: #rbp).
	(l r: #r15).
	(l r: #r14).
	(l r: #r13).
	(l r: #r12).
	(l r: #r11).
	(l r: #r10).
	(l r: #r9).
	(l r: #r8).
	(l r: #rcx).
	(l r: #rdx).
	(l r: #rsi).
	(l r: #rdi)}	"rsp is reserved as stack pointer."