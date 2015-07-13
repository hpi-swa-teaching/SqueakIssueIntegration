*ProjectXX-Core-context stack menu
issueContextStackMenu: aMenu
	<contextStackMenu>

	| issueManagement |

	issueManagement := (IssueManagement getIssueManagementFor: self selectedClass category).
	(issueManagement isNil or: [ issueManagement = '' ]) ifFalse: [
		^ aMenu addList: #(
			('create Issue' createIssue)
			-);
		yourself
	] ifTrue: [ ^ aMenu ]