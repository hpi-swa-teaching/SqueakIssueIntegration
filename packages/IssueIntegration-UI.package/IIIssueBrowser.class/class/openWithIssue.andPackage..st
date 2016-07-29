opening
openWithIssue: anIssue andPackage: aPackage 
	^ ToolBuilder default open: self new;
		selectedRepo: (IIIssueManagement repositoryDictionary at: aPackage);
		selectedIssue: anIssue