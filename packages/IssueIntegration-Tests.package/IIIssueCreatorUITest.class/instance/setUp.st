running
setUp
	super setUp.
	self mockHelper createMockIssueManagement.
	self wantsToTest: (IIIssueCreator newWithMethodName: '' packageName: 'IssueIntegration-Tests' issueClassName: '' issueClassIsMeta: false)