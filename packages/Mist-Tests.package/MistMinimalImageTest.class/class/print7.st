test programs
print7
	"A primitive method that outputs the character $7 on stdout, then returns SmallInteger 0."

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
							(Fog storeByte: (Fog intConstant: 16r37) to: (Fog fetchVariable: 'bufPtr') atIndex: (Fog intConstant: 0)).	"$7"
							(Fog
								sysCall: #write
								args:
									{(Fog intConstant: 1).	"fd"
									(Fog fetchVariable: 'bufPtr').
									(Fog intConstant: 1)	"size"})}).
					(Fog intToSmallInt: (Fog intConstant: 0))})}