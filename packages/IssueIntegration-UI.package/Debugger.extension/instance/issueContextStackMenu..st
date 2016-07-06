*IssueIntegration-UI-context stack menu
issueContextStackMenu: aMenu
	<contextStackMenu>

	| issueManagement |
	issueManagement := IIIssueManagement getIssueManagementFor: self selectedClass category.
	issueManagement hasValidRemote ifTrue: [
		^ aMenu addList: #(
			('create Issue' createIssue)
			-);
		yourself
	] ifFalse: [ ^ aMenu ]