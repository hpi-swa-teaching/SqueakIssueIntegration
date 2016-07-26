initialize-release
initializeIssues
	self issues: OrderedCollection new.
	self issues
		add: (Json readFrom: self testIssue1 readStream);
		add: (Json readFrom: self testIssue2 readStream);
		add: (Json readFrom: self testIssue3 readStream)
	