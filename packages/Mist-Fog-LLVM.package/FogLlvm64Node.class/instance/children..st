as yet unclassified
children: childNodes
	children := OrderedCollection new.
	childNodes do: [ :child | self addChild: child ]