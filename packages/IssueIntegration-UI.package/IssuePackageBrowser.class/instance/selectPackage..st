user interface signals
selectPackage: aPackageString
	| issuemanagement |

	self selectedPackage: aPackageString.
	issuemanagement := IssueManagement getIssueManagementFor: aPackageString.
	^ issuemanagement
	