grammar
string
	^ $' asParser , (doubledQuote / $' asParser negate) star , $' asParser