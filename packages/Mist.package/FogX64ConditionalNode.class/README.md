FogX64ConditionalNode implements an "if-then-else" branch. 
Three children. The first child is evaluated, then the flags are tested. If the specified condition is met, the second child is evaluated, otherwise the third child is evaluated.

Instance Variables:
	flagSymbol	<Symbol> Conditional to test for. 
		Values can be 
			#O -- Overflow
			#NO -- Not Overflow
			#C -- Carry
			#NC -- Not Carry
			#Z -- Zero
			#NZ -- Not Zero
			#S -- Sign
			#NS -- Not Sign
			#PE -- Parity Even
			#PO -- Parity Odd

			Unsigned integer comparisons:
			#A -- Above (CF=0 and ZF=0)
			#BE -- Below or equal (CF=1 or ZF=1)
			#B -- Below (Alias for #C)
			#AE -- Above or equal (Alias for #NC)

			Signed integer comparisons:
			#L -- Less (SF <> OF)
			#GE -- Greater than or equal (SF = OF)
			#LE -- Less then or equal (ZF = 1 or SF <> OF)
			#G -- Greater than (ZF = 0 and SF = OF)