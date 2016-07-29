running
testProjectID
	| projectURL |	
	projectURL := 'http://www.RANDOM_STRING_GFSDGgfsdgFS3trw.com/'.
	self issueManagement projectID: projectURL.
	self assert: self issueManagement projectID equals: projectURL.