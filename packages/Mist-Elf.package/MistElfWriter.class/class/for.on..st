instance creation
for: elfInfo on: stream
	| inst |
	inst := self new.
	inst
		elfInfo: elfInfo;
		stream: stream.
	^ inst