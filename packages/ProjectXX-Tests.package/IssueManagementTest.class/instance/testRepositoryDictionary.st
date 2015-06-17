as yet unclassified
testRepositoryDictionary
	| issueManagement |

	"We do not know if there is an old key, so we delete it if it exists"
	IssueManagement deleteIssueManagementFor: 'ProjectXX-Core'. 

	issueManagement := GitHubIssueIntegration new.
	issueManagement projectURL: 'HPI-SWA-Teaching/SWT15-Project-03'.
	
	IssueManagement addIssueManagement: issueManagement to: 'ProjectXX-Core'.
	self assert: (IssueManagement getIssueManagementFor: 'ProjectXX-Core') projectURL equals: 'HPI-SWA-Teaching/SWT15-Project-03'.

	IssueManagement deleteIssueManagementFor: 'ProjectXX-Core'.
	self assert: (IssueManagement getIssueManagementFor: 'ProjectXX-Core') equals: ''.

	"At the end the the repository should be set"
	IssueManagement addIssueManagement: issueManagement to: 'ProjectXX-Core'