initialize-release
initialize
	startAddress := 16r400000.	"default load address"
	sizeInBytes := 0.	"no objects yet"
	objects := SortedCollection sortBlock: [ :x :y | x physicalAddress < y physicalAddress ]