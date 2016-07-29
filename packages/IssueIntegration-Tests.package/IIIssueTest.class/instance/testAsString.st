running
testAsString
	| issue title number |
	title := 'This is a title'.
	number := 5.
	issue := IIIssue new
		title: title;
		number: number;
		yourself.
		
	self assert: '#', number, ' ', title equals: issue asString