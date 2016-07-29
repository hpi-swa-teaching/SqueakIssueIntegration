running
testRepositoryDictionary
	| oldIssueManagement issueManagement |
	oldIssueManagement := IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core'.
	IIIssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'. 

	issueManagement := IIGitHubIssueManagement new.
	issueManagement projectID: 'HPI-SWA-Teaching/SWT15-Project-03'.
	
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Core'.
	self assert: (IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core') projectID equals: 'HPI-SWA-Teaching/SWT15-Project-03'.
	IIIssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'.
	self assert: (IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core') equals: IIEmptyIssueManagement getInstance.

	IIIssueManagement addIssueManagement: oldIssueManagement to: 'IssueIntegration-Core'