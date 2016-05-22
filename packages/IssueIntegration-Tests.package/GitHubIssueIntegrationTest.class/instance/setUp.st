running
setUp
	super setUp.
	self issueManagement: GitHubIssueIntegration new.
	self setLoginKey.
	self issueManagement projectID: 'frederike-ramin/TestIssues'