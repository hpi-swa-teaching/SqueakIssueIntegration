running
testProjectID
	| projectURL correctSlug |
	correctSlug := 'frederike-ramin/TestIssues'.
		
	projectURL := 'http://www.RANDOM_STRING_GFSDGgfsdgFS3trw.com/'.
	self issueManagement projectID: projectURL.
	self assert: self issueManagement projectID equals: projectURL.
	
	projectURL := 'frederike-ramin/TestIssues'.	
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: correctSlug.
	projectURL := 'https://github.com/frederike-ramin/TestIssues'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: correctSlug.
	projectURL := 'http://github.com/frederike-ramin/TestIssues'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: correctSlug.
	projectURL := 'https://github.com/frederike-ramin/TestIssues.git'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: correctSlug.
	projectURL := 'http://github.com/frederike-ramin/TestIssues.git'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: correctSlug.
	projectURL := 'git@github.com:frederike-ramin/TestIssues.git'.
	self assert: (self issuePackageBrowser extractProjectIDFrom: projectURL) equals: correctSlug