initialize-release
setUp

	super setUp.
	self issueManagement: IssueManagement new.
	self issuePackageBrowser: IISettings new.