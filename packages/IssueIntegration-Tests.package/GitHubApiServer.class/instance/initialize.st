as yet unclassified
initialize
	super initialize.
	self webServer: WebServer new.
	self initializeWebServer.
	self initializeIssues.
	self issueNumber: 3