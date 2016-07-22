initialize-release
setUp
	super setUp.
	self wantsToTest: (IIIssueCreator newWithMethodName: '' packageName: nil issueClassName: '' issueClassIsMeta: false).