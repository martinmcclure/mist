test programs
echo1
	"A primitive method that waits for a single character on stdin, echos it to stdout, and answers 0."

	^ Fog
		methodWithArguments: {'self'}
		body:
			{(Fog
				sequence:
					{(Fog
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
					(Fog sysCall: #close args: {(Fog intConstant: 0)}).
					(Fog intToSmallInt: (Fog intConstant: 0))})}