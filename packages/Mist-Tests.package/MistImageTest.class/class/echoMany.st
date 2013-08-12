test programs
echoMany
	"Test of loop and loop exit nodes.
	Echo characters from stdin to stdout until an escape is received. First, take stdin's tty out of canonical mode with an ioctl. 
	After escape character is read, restore canonical mode, output a newline, and exit with code 0."

	| loopLabel |
	loopLabel := 'loopLabel' copy.	"Unique object identifying the loop."
	^ Fog
		program:
			{"(Fog breakpoint)."
			(Fog
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
							(Fog fetchVariable: 'termiosPtr')}).
					(Fog
						storeByte:
							(Fog
								loop: loopLabel
								steps:
									{(Fog
										sysCall: #read
										args:
											{(Fog intConstant: 0).	"fd"
											(Fog fetchVariable: 'bufPtr').
											(Fog intConstant: 1)	"count"}).
									(Fog
										following:
											(Fog
												compare: (Fog fetchByteFrom: (Fog fetchVariable: 'bufPtr') atIndex: (Fog intConstant: 0))
												to: (Fog intConstant: 16r1B))
										if: #Z
										then: (Fog exitLoop: loopLabel with: (Fog intConstant: 16r0A)) "No, this isn't the easiest way to get a newline output -- it's this way to exercise the 'return a value from a loop' thing."
										else:
											(Fog
												sysCall: #write
												args:
													{(Fog intConstant: 1).	"fd"
													(Fog fetchVariable: 'bufPtr').
													(Fog intConstant: 1)	"count"}))})
						to: (Fog fetchVariable: 'bufPtr')
						atIndex: (Fog intConstant: 0)).
					(Fog
						sysCall: #write
						args:
							{(Fog intConstant: 1).	"fd"
							(Fog fetchVariable: 'bufPtr'). "Should contain a newline at this point."
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
							(Fog fetchVariable: 'termiosPtr')})}).
			(Fog sysCall: #exit_group args: {(Fog intConstant: 0)})}