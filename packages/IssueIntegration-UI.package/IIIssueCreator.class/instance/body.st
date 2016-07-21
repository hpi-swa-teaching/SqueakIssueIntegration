accessing
body
	^ body 
		ifNil: [ '' ]
		ifNotNil: [ body ]