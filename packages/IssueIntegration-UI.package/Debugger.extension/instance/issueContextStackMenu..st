*IssueIntegration-UI-context stack menu
issueContextStackMenu: aMenu
	<contextStackMenu>

	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: self selectedClass category.
	issueManagement hasValidRemote ifTrue: [
		^ aMenu addList: #(
			('create Issue' createIssue)
			-);
		yourself
	] ifFalse: [ ^ aMenu ]