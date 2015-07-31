issue management
testRepositoryDictionary

	| oldIssueManagement issueManagement |

	"We do not know if there is an old key, so make a backup and then delete it if it exists"
	oldIssueManagement := IssueManagement getIssueManagementFor: 'IssueIntegration-Core'.
	IssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'. 

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: 'HPI-SWA-Teaching/SWT15-Project-03'.
	
	IssueManagement addIssueManagement: issueManagement to: 'IssueIntegration-Core'.
	self assert: (IssueManagement getIssueManagementFor: 'IssueIntegration-Core') projectURL equals: 'HPI-SWA-Teaching/SWT15-Project-03'.

	IssueManagement deleteIssueManagementFor: 'IssueIntegration-Core'.
	self assert: (IssueManagement getIssueManagementFor: 'IssueIntegration-Core') equals: (EmptyIssueManagement getInstance).

	"At the end add the backed-up issue management"
	IssueManagement addIssueManagement: oldIssueManagement to: 'IssueIntegration-Core'