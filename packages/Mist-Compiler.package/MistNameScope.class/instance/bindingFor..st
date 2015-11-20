as yet unclassified
bindingFor: aName
	| binding |
	binding := self bindingOrNilFor: aName.
	^ binding isNil
		ifTrue: [ self error: 'No binding for "' , aName , '".' ]
		ifFalse: [ binding ]