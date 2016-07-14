instance variables
testBody
	| issue |
	issue := IIIssue new.
	issue body: 'Test Body'.
	self assert: issue body equals: 'Test Body'