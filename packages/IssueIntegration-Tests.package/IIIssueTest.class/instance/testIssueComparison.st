instance variables
testIssueComparison
	| issue1 issue2 |
	issue1 := IIGitHubIssue new.
	issue2 := IIGitHubIssue new.
	
	issue1 number: 2.
	issue2 number: 1.
	self assert: issue1 <= issue2.
	issue1 number: 1.
	self assert: issue1 <= issue2.
	issue2 number: 3.
	self assert: (issue1 <= issue2) not.