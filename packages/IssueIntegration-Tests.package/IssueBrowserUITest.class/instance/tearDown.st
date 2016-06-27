as yet unclassified
tearDown
	super tearDown.
	IssueManagement deactivateTestMode.
	GitHubApiServer stop.