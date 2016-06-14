running
setUp
	| server |
	super setUp.
	server := GitHubApiServer new.
	server start.
	self issueManagement: GitHubIssueIntegration new.
	self issueManagement webServer: GitHubWebClient new.
	self setLoginKey.
	self issueManagement projectID: 'frederike-ramin/TestIssues'