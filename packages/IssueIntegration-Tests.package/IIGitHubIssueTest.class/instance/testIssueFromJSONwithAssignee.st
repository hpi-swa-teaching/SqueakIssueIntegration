running
testIssueFromJsonWithAssignee
	| issue issueJson |
	issueJson := Json readFrom: self issueWithAssignee readStream.
	issue := IIGitHubIssue fromJson: issueJson.
	
	self 
		assert: 1347 equals: issue number;
		assert: 'Found a bug' equals: issue title;
		assert: 'Im having a problem with this.' equals: issue body;
		assert: 'octocat' equals: issue assignee