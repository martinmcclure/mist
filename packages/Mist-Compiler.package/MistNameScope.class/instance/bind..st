as yet unclassified
bind: aName
	| variable |
	(self bindingOrNilFor: aName) ifNotNil: [ self error: 'Variable ' , aName , ' exists, cannot be redefined.' ].
	variable := self variableClass named: aName.
	bindings at: aName put: variable.
	variable scope: self