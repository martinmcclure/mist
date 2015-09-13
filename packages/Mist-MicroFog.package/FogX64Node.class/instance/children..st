private
children: childNodes
	children := OrderedCollection new.
	childNodes do: [ :child | self addChild: child ]