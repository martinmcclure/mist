x64-compiling-pass2
moveChildNum: i fromLoc: assignedLoc toTempLocOn: codeStream
	| tmpLoc |
	tmpLoc := self tmpLocForChildNum: i.
	codeStream movFrom: assignedLoc to: tmpLoc