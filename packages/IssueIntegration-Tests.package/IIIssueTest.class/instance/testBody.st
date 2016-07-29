running
testBody
	| issue |
	issue := IIIssue new
		body: 'Test Body';
		yourself.
	self assert: 'Test Body' equals: issue body