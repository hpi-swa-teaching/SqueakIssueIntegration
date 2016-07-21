as yet unclassified
testBody
	"self subject model selectedIssue: IIIssue new.
	self subject model body: 'Test Body'.
	self assert: self subject model body equals: 'Test Body' "
	
	"| issueBrowser issue |
	issueBrowser := IIIssueBrowser new.
	issue := IIGitHubIssue new.
	issue title: 'Test Titel'.
	issueBrowser selectedIssue: issue.
	issueBrowser body: 'Test Body'.
	self assert: issueBrowser body equals: 'Test Body'"
	