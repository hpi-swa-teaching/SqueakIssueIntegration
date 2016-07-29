running
testIssueFromJsonWithoutAssignee
	| issue issueJson |
	issueJson := Json readFrom: self issueWithoutAssignee readStream.
	issue := IIGitHubIssue fromJson: issueJson.
	
	self assert: issue number equals: 1347.
	self assert: issue title equals: 'Found a bug'.
	self assert: issue body equals: 'I''m having a problem with this.'