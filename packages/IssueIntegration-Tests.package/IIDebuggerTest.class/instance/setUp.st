as yet unclassified
setUp
	| debugger |
	super setUp.
	self createMockIssueManagement.
	debugger := self should: [[ Debugger 
			openContext: thisContext 
			label: 'Test' 
			contents: nil] fork.
		(Delay forSeconds: 1) wait ] createMorphWithModel: Debugger.

	self wantsToTest: debugger.