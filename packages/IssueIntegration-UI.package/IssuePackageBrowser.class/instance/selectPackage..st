user interface signals
selectPackage: aPackageString
	| issuemanagement |

	selectedPackage := aPackageString.
	issuemanagement := IssueManagement getIssueManagementFor: aPackageString.
	self setFormInIssuePackageBrowserWithProjectURL: (issuemanagement projectURL) loginKey: (issuemanagement loginKey) username: (issuemanagement username)