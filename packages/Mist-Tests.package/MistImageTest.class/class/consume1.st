test programs
consume1
	"A primitive method that reads one character from stdin. First, take stdin's tty out of canonical mode with an ioctl. After character is read, restore canonical mode.
	 Answers a SmallInteger, the numerical value of the character read."

	^ Fog
		methodWithArguments: {'self'}
		body:
			{(Fog
				variableScope:
					{'termiosPtr'.
					'bufPtr'}
				steps:
					{(Fog
						assignVariable: 'termiosPtr'
						value:
							(Fog
								intAdd: (Fog intConstant: 16r10)
								to:
									(Fog
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
													(Fog intConstant: 0)	"offset"})))).
					(Fog
						sysCall: #ioctl
						args:
							{(Fog intConstant: 0).	"stdin"
							(Fog intConstant: 16r5401).	"TCGETS"
							(Fog fetchVariable: 'termiosPtr')}).
					(Fog
						store:
							(Fog
								and: (Fog intConstant: 16rFFFFFFF5FFFFFFFF)
								with: (Fog fetchFrom: (Fog fetchVariable: 'termiosPtr') atIndex: (Fog intConstant: 1)))
						to: (Fog fetchVariable: 'termiosPtr')
						atIndex: (Fog intConstant: 1)).	"Clear the canonical bit (16r8)and the echo bit (16r2)"
					(Fog
						sysCall: #ioctl
						args:
							{(Fog intConstant: 0).	"stdin"
							(Fog intConstant: 16r5402).	"TCSETS"
							(Fog fetchVariable: 'termiosPtr')}).	"(Fog breakpoint)."
					(Fog
						sysCall: #read
						args:
							{(Fog intConstant: 0).	"fd"
							(Fog fetchVariable: 'bufPtr').
							(Fog intConstant: 1)	"count"}).
					(Fog
						store:
							(Fog
								or: (Fog intConstant: 16rA00000000)
								with: (Fog fetchFrom: (Fog fetchVariable: 'termiosPtr') atIndex: (Fog intConstant: 1)))
						to: (Fog fetchVariable: 'termiosPtr')
						atIndex: (Fog intConstant: 1)).	"Put the terminal back in canonical mode with echo."
					(Fog
						sysCall: #ioctl
						args:
							{(Fog intConstant: 0).	"stdin"
							(Fog intConstant: 16r5402).	"TCSETS"
							(Fog fetchVariable: 'termiosPtr')}).
					(Fog intToSmallInt: (Fog fetchByteFrom: (Fog fetchVariable: 'bufPtr') atIndex: (Fog intConstant: 0)))})}