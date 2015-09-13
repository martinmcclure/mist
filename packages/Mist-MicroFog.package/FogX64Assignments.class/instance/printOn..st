printing
printOn: stream
	
	stream nextPutAll: 'Assignments: '.
	l2v associationsDo: [:a | a printOn: stream]