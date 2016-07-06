instance variables
testTitle
	| issue |
	issue := IIIssue new.
	issue title: 'Title'.

	self assert: issue title equals: 'Title'