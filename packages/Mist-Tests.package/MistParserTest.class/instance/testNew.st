method tests
testNew
	| methodNode |
	methodNode := MistParser parse:self newMethod1.
	"self halt."