instance variables
testAsString
	| issue title number |
	title := 'This is a title'.
	number := 5.
	issue := IIIssue new.
	issue 
		title: title;
		number: number.
		
	self assert: issue asString equals: '#' , number , ' ' , title