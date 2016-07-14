instance variables
testNumber
	| issue |
	issue := IIIssue new.
	issue number: 42.
	self assert: issue number equals: 42