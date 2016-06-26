instance variables
testIssueComparison
	| issue1 issue2 |
	issue1 := GitHubIssue new.
	issue2 := GitHubIssue new.
	issue1 number: 1.
	issue2 number: 2.
	self assert: issue1 <= issue2.
	issue1 number: 2.
	self assert: issue1 <= issue2.
	issue1 number: 3.
	self assert: (issue1 <= issue2) not.