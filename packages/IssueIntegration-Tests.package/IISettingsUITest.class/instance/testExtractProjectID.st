running
testExtractProjectID
	| correctSlug projectURL |
	correctSlug := 'frederike-ramin/TestIssues'.
	
	projectURL := 'frederike-ramin/TestIssues'.	
	self assert: correctSlug equals: (self subject model extractProjectIDFrom: projectURL).
	projectURL := 'https://github.com/frederike-ramin/TestIssues'.
	self assert: correctSlug equals: (self subject model extractProjectIDFrom: projectURL).
	projectURL := 'http://github.com/frederike-ramin/TestIssues'.
	self assert: correctSlug equals: (self subject model extractProjectIDFrom: projectURL).
	projectURL := 'https://github.com/frederike-ramin/TestIssues.git'.
	self assert: correctSlug equals: (self subject model extractProjectIDFrom: projectURL).
	projectURL := 'http://github.com/frederike-ramin/TestIssues.git'.
	self assert: correctSlug equals: (self subject model extractProjectIDFrom: projectURL).
	projectURL := 'git@github.com:frederike-ramin/TestIssues.git'.
	self assert: correctSlug equals: (self subject model extractProjectIDFrom: projectURL)