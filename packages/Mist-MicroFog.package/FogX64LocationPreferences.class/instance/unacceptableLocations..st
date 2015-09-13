accessing
unacceptableLocations: aCollection
	aCollection do: [ :loc | acceptableLocations remove: loc ifAbsent: [  ] ]