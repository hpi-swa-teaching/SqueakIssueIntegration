initialize-release
initializeIssues
	self issues: (OrderedCollection 
		with: (Json readFrom: self testIssue1 readStream)
		with: (Json readFrom: self testIssue2 readStream)
		with: (Json readFrom: self testIssue3 readStream))