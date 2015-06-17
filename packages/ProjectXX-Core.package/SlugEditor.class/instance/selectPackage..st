as yet unclassified
selectPackage: aPackageString
	| issuemanagement |

	selectedPackage := aPackageString.
	issuemanagement := IssueManagement getIssueManagementFor: aPackageString.
	(issuemanagement = '') ifTrue: 
	[
	self ui projectURLLine theText: ''.
	self ui loginKeyLine theText: ''.
	]	
	ifFalse: [
		self ui projectURLLine theText:(issuemanagement projectURL).
		self ui loginKeyLine theText:(issuemanagement loginKey)
	]