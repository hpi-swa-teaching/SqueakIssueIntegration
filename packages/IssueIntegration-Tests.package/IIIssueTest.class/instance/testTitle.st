running
testTitle
	| issue |
	issue := IIIssue new
		title: 'Title';
		yourself.
	self assert: 'Title' equals: issue title