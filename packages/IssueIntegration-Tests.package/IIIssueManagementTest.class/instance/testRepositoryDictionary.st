issue management
testRepositoryDictionary
	| oldIssueManagement issueManagement |
	"We do not know if there is an old key, so make a backup and then delete it if it exists"
	oldIssueManagement := IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core'.
	IIIssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'. 

	issueManagement := IIGitHubIssueManagement new.
	issueManagement projectID: 'HPI-SWA-Teaching/SWT15-Project-03'.
	
	IIIssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Core'.
	self assert: (IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core') projectID equals: 'HPI-SWA-Teaching/SWT15-Project-03'.
	IIIssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'.
	self assert: (IIIssueManagement getIssueManagementFor: 'IssueIntegration-Core') equals: (IIEmptyIssueManagement getInstance).

	"At the end add the backed-up issue management"
	IIIssueManagement addIssueManagement: oldIssueManagement to: 'IssueIntegration-Core'