opening
openWithIssue: anIssue andPackage: aPackage 
	| issueBrowser |
	issueBrowser := self new.
	issueBrowser selectedRepo: (IIIssueManagement repositoryDictionary at: aPackage) projectID.
	issueBrowser selectedIssue: anIssue.
	 ^ ToolBuilder default open: issueBrowser.
	