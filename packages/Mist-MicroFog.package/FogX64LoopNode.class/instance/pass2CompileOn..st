x64-compiling-pass2
pass2CompileOn: codeStream
	"My exit node jmps to loopTailLabel. If its generation location is not the same as my parent's resting location, 
	I need to emit a mov *after* loopTailLabel, thus the different ordering here from other nodes."

	codeStream label: loopHeadLabel.
	super pass2CompileOn: codeStream.
	codeStream label: loopTailLabel.
	self emitOutputMovTo: codeStream