as yet unclassified
testRepositoryDictionary
	| oldIssueManagement issueManagement |

	"We do not know if there is an old key, so make a backup and then delete it if it exists"
	oldIssueManagement := IssueManagement getIssueManagementFor: 'ProjectXX-Core'.
	IssueManagement deleteIssueManagementFor: 'ProjectXX-Core'. 

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: 'HPI-SWA-Teaching/SWT15-Project-03'.
	
	IssueManagement addIssueManagement: issueManagement to: 'ProjectXX-Core'.
	self assert: (IssueManagement getIssueManagementFor: 'ProjectXX-Core') projectURL equals: 'HPI-SWA-Teaching/SWT15-Project-03'.

	IssueManagement deleteIssueManagementFor: 'ProjectXX-Core'.
	self assert: (IssueManagement getIssueManagementFor: 'ProjectXX-Core') equals: ''.

	"At the end add the backed-up issue management"
	IssueManagement addIssueManagement: oldIssueManagement to: 'ProjectXX-Core'