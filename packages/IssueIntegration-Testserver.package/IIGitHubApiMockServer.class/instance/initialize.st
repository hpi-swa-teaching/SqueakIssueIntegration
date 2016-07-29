initialize-release
initialize
	super initialize.
	self
		initializeWebServer;
		initializeIssues;
		initializeLabels;
		issueNumber: self issues size