x64-compiling-pass1
initializeChildVariables
	"I don't use any of my children's results, except for the last child, and only that if I return a result.
	In that case, it must be in rax so I can return it according to the ABI"

	| lastChildVar |
	1 to: children size - 1 do: [ :i | (children at: i) beDummy ].
	lastChildVar := children at: children size.	"Method nodes always have at least one child"
	isReturnedFrom
		ifTrue: [ 
			| pref |
			pref := FogX64LocationPreferences new.
			pref onlyRegister: (FogX64Location r: #rax).
			lastChildVar parentAcceptable: pref ]
		ifFalse: [ lastChildVar beDummy ]