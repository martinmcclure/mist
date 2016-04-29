private
compilePrimitive
	| microFogRoot |
	self checkSelector.
	microFogRoot := Compiler evaluate: fogRoot methodBody.
	microFogRoot ifNil: [ self error: 'Primitive Fog failed to compile.' ].
	method := self compileMicroFog: microFogRoot