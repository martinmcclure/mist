x64-compiling-pass2
moveChildNum: i fromLoc: assignedLoc toTempLocOn: codeStream
	| tmpLoc |
	tmpLoc := self tmpLocForChildNum: i.
	codeStream mov: (assignedLoc asOperandFor: codeStream) to: (tmpLoc asOperandFor: codeStream)