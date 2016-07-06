instance variables
testAsString
	| issue title number |
	issue := Issue new.
	title := 'This is a title'.
	number := 5.
	issue 
		title: title;
		number: number.
	self assert: issue asString equals: '#' , number , ' ' , title