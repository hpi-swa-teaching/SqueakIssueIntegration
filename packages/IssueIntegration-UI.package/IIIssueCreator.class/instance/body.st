initialization
body
	^ body 
		ifNil: [ '' ]
		ifNotNil: [ body ]