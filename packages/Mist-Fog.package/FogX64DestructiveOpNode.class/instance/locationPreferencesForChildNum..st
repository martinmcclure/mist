x64-compiling-pass1
locationPreferencesForChildNum: i
	"A DestructiveOpNode can sometimes avoid a mov by making sure that its destination child is in a location that is acceptable to its parent."

self halt. "This method should not be used anymore."
"	| normalPrefs |
	normalPrefs := super locationPreferencesForChildNum: i.
	^ i = 2
		ifFalse: [ normalPrefs ]
		ifTrue: [ normalPrefs intersection: parent parentAcceptable ]"