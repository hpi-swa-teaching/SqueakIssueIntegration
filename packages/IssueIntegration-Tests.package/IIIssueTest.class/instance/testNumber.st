running
testNumber
	| issue |
	issue := IIIssue new
		number: 42;
		yourself.
	self assert: 42 equals: issue number