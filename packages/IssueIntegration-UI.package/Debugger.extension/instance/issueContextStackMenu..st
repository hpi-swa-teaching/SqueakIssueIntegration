*IssueIntegration-UI-context stack menu
issueContextStackMenu: aMenu
	<contextStackMenu>
	| issueManagement |
	issueManagement := IIIssueManagement getIssueManagementFor: self selectedClass category.
	issueManagement hasValidRemote 
		ifTrue: [ ^ aMenu
			add: 'create Issue' target: self action: #createIssue;
			yourself ] 
		ifFalse: [ ^ aMenu ]