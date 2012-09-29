class initialization
initializeConditionCodes

	"The condition codes are the lower 4 bits of the opcodes for a Jcc on that condition.
	ConditionCodes is an IdentityDictionary mapping the condition symbols to those condition codes."
	
	ConditionCodes := IdentityDictionary new.
	ConditionCodes 
		at: #O put: 0;
		at: #NO put: 1;
		at: #B put: 2;
		at: #C put: 2;
		at: #NC put: 3;
		at: #AE put: 3;
		at: #Z put: 4;
		at: #NZ put: 5;
		at: #BE put: 6;
		at: #A put: 7;
		at: #S put: 8;
		at: #NS put: 9;
		at: #PE put: 10;
		at: #PO put: 11;
		at: #L put: 12;
		at: #GE put: 13;
		at: #LE put: 14;
		at: #G put: 15
