instance variables
testUsername
	| username |
	username := 'BernhardRabe'.
	self issueManagement projectID: username.
	self assert: self issueManagement projectID equals: username
	