as yet unclassified
setUp
	super setUp.
	self createMockIssueManagement.
	self wantsToTest: IISettings open.
	self packageList: (self subject findByName: 'packageList')