running
setUp
	super setUp.
	self issueManagement: GitHubIssueIntegration new.
	self setLoginKey.
	self issueManagement projectURL: 'frederike-ramin/IssueTest'