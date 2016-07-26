initialize-release
initialize
	super initialize.
	self webServer: WebServer new.
	self
		initializeWebServer;
		initializeIssues;
		initializeLabels;
		issueNumber: self issues size.