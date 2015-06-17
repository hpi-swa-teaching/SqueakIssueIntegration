as yet unclassified
selectPackage: aPackageString
	| issuemanagement |

	selectedPackage := aPackageString.
	issuemanagement := IssueManagement getIssueManagementFor: aPackageString.
	(issuemanagement = '') ifTrue: 
	[
	self ui projectURLLine theText: ''.
	self ui loginKeyLine theText: ''.
	self ui usernameLine theText: ''.
	]	
	ifFalse: [
		self ui projectURLLine theText:(issuemanagement projectURL).
		self ui loginKeyLine theText:(issuemanagement loginKey).
		self ui usernameLine theText:(issuemanagement username).
	]