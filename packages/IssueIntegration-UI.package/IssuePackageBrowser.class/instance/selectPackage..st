user interface signals
selectPackage: aPackageString
	| issuemanagement |

	selectedPackage := aPackageString.
	issuemanagement := IssueManagement getIssueManagementFor: aPackageString.
	self setFormInIssuePackageBrowserWithProjectID: (issuemanagement projectID) loginKey: (issuemanagement loginKey) username: (issuemanagement username)