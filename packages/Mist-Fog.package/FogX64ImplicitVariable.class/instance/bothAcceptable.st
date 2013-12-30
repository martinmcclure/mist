accessing
bothAcceptable
	^ childNode acceptableGenerationLocations intersection: (parentNode acceptableConsumptionLocationsFor: self)