running
testProjectID
	| projectID |	
	projectID := 'HPI-SWA-Teaching/IssueIntegration'.
	self issueManagement projectID: projectID.
	self assert: projectID equals: self issueManagement projectID