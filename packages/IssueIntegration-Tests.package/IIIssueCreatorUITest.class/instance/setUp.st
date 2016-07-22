initialize-release
setUp
	super setUp.
	self createMockIssueManagement.
	self wantsToTest: (IIIssueCreator newWithMethodName: '' packageName: 'IssueIntegration-Tests' issueClassName: '' issueClassIsMeta: false)