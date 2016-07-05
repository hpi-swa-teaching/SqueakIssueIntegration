running
setUp
	super setUp.
	self issueManagement: self createMockIssueManagement.
	self wantsToTest: Morph new. "TODO this is an ugly hack :("