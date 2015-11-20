as yet unclassified
bindingOrNilFor: aName
	^ bindings at: aName ifAbsent: [ enclosingScope bindingOrNilFor: aName ]