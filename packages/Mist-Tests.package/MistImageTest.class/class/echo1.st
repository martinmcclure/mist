test programs
echo1
	"Wait for a single character on stdin, echo it to stdout, exit."

	^ Fog
		program:
			{"(Fog breakpoint)."
			(Fog
				variableScope: {'bufPtr'}
				steps:
					{(Fog
						assignVariable: 'bufPtr'
						value:
							(Fog
								sysCall: #mmap2
								args:
									{(Fog intConstant: 0).	"addr"
									(Fog intConstant: 4096).	"length"
									(Fog intConstant: 3).	"prot xWR"
									(Fog intConstant: 16r22).	"flags map_private + map_anonymous"
									(Fog intConstant: -1).	"fd"
									(Fog intConstant: 0)	"offset"})).
					(Fog
						sysCall: #read
						args:
							{(Fog intConstant: 0).	"fd"
							(Fog fetchVariable: 'bufPtr').
							(Fog intConstant: 1)	"count"}).
					(Fog
						sysCall: #write
						args:
							{(Fog intConstant: 1).	"fd"
							(Fog fetchVariable: 'bufPtr').
							(Fog intConstant: 1)	"size"})}).
			(Fog sysCall: #exit_group args: {(Fog sysCall: #close args: {(Fog intConstant: 0)})})}