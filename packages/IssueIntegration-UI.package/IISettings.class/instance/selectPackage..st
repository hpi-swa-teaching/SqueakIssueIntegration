user interface signals
selectPackage: aPackageString
	| issuemanagement |
	self selectedPackage: aPackageString.
	issuemanagement := IIIssueManagement getIssueManagementFor: aPackageString.
	^ issuemanagement
	