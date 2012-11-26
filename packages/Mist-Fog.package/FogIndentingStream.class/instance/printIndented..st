writing
printIndented: aBlock
	level := level + 1.
	aBlock value: self.
	level := level - 1