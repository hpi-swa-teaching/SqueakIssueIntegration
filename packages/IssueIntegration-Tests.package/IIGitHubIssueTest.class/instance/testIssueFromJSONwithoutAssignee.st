running
testIssueFromJsonWithoutAssignee
	| issue issueJson |
	issueJson := Json readFrom: self issueWithoutAssignee readStream.
	issue := IIGitHubIssue fromJson: issueJson.
	
	self 
		assert: 1347 equals: issue number;
		assert: 'Found a bug' equals: issue title;
		assert: 'I''m having a problem with this.' equals: issue body;
		assert: issue assignee isNil