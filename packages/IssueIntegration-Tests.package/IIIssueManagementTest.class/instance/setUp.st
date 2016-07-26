running
setUp
	super setUp.
	self issueManagement: IIIssueManagement new.
	self issuePackageBrowser: IISettings new