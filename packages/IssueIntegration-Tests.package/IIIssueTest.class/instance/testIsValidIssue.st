instance variables
testIsValidIssue
	self assert: IIGitHubIssue new isValidIssue.
	self assert: false equals: IIEmptyIssue new isValidIssue