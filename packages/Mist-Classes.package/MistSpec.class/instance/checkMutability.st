private
checkMutability
	isCompiled
		ifTrue: [ self error: 'Cannot modify a spec once it has been compiled.' ]