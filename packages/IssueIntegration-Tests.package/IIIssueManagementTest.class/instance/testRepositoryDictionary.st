running
testRepositoryDictionary
	| issueManagement |
	issueManagement := IIIssueManagement new
		projectID: 'HPI-SWA-Teaching/SWT15-Project-03';
		yourself.
	
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Core'.
	self assert: 'HPI-SWA-Teaching/SWT15-Project-03' 
		equals: (IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core') projectID.
	
	IIIssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'.
	self assert: IIEmptyIssueManagement getInstance
		equals: (IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core')