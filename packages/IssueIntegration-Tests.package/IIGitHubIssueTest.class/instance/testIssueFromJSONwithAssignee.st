running
testIssueFromJSONwithAssignee
	| issue issueJson |
	issueJson := Json readFrom: self issueWithAssignee readStream.
	issue := IIGitHubIssue fromJSON: issueJson.
	
	self assert: issue number equals: 1347.
	self assert: issue title equals: 'Found a bug'.
	self assert: issue body equals: 'Im having a problem with this.'.
	self assert: issue assignee equals: 'octocat'