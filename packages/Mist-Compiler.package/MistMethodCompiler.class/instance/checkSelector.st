private
checkSelector
	fogRoot selector = spec selector
		ifFalse: [ self error: 'Parsed selector does not match spec''s selector.' ]