grammar
stringBody
	^ (doubledQuote / $' asParser negate) star flatten