loops
removeLoopLabeled: label
	"Many loops will get removed twice, once when the exit node is found and once when the loop itself is done being processed in pass 1 compile."

	loopsInScope removeKey: label ifAbsent: [  ]