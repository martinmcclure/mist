singleton accessing
singleton
	Singleton == nil
		ifTrue: [ Singleton := self new ].
	^ Singleton