instance creation
for: elfInfo on: stream

	| instanceClass instance |
	instanceClass := self withAllSubclasses detect: [ :any | any bitWidth = elfInfo bitWidth ].
	instance := instanceClass new.
	instance
		elfInfo: elfInfo;
		stream: stream.
	^ instance