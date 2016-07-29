accessing
selectedPackage: aPackageString
	| issueManagement |
	selectedPackage := aPackageString.
	self changed: #selectedPackage.
	
.	issueManagement := IIIssueManagement getIssueManagementFor: self selectedPackage.
	self
		projectID: issueManagement projectID;
		loginKey: issueManagement loginKey;
		username: issueManagement username