instance variables
testProjectID

	| projectURL fredö|

	fredö := 'frederike-ramin/TestIssues'.	
	projectURL := 'http://www.RANDOM_STRING_GFSDGgfsdgFS3trw.com/'.
	self issueManagement projectID: projectURL.
	self assert: self issueManagement projectID equals: projectURL.
	
	projectURL := 'https://github.com/frederike-ramin/TestIssues'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: fredö.
	projectURL := 'http://github.com/frederike-ramin/TestIssues'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: fredö.
	projectURL := 'https://github.com/frederike-ramin/TestIssues.git'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: fredö.
	projectURL := 'http://github.com/frederike-ramin/TestIssues.git'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: fredö.
	projectURL := 'git@github.com:frederike-ramin/TestIssues.git'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: fredö.